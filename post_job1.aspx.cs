using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class post_job1 : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;

    public void country()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from Country";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList4.DataSource = ds.Tables[0];
        DropDownList4.DataTextField = "country_name";
        DropDownList4.DataValueField = "country_id";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void state()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from State where State.country_id=" + DropDownList4.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList5.DataSource = ds.Tables[0];
        DropDownList5.DataTextField = "state_name";
        DropDownList5.DataValueField = "state_id";
        DropDownList5.DataBind();
        DropDownList5.Items.Insert(0, new ListItem("select", "0"));

        con.Close();

    }
    public void city()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        SqlDataAdapter adp = null;
        string query = "select * from City where City.state_id=" + DropDownList5.SelectedValue;

        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList6.DataSource = ds.Tables[0];
        DropDownList6.DataTextField = "city_name";
        DropDownList6.DataValueField = "city_id";
        DropDownList6.DataBind();
        DropDownList6.Items.Insert(0, new ListItem("select", "0"));
        con.Close();
    }
   
    public void area()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from Functional_area";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "area_name";
        DropDownList2.DataValueField = "area_id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }
    public void post()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from Post1 where Post1.area_id=" + DropDownList2.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataTextField = "post_name";
        DropDownList3.DataValueField = "post_id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            country();
            DropDownList5.Items.Insert(0, new ListItem("select", "0"));

            DropDownList6.Items.Insert(0, new ListItem("select", "0"));

            area();
            DropDownList3.Items.Insert(0, new ListItem("select", "0"));
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string un = null;
        un = Session["User"].ToString();
        int c = getcid(un, con);
        Session["ID"] = c;

        string exprnc = null;
        exprnc = DropDownList7.Text + " Years and " + DropDownList8.Text + " Months";

        string qry = "insert into Job_post (company_id,job_title,company_name,area_id, post_id, city_id,city_name, no_vacancy, expr_req, skills_req, edu_req, basic_req, salary_min, salary_max) values (" + c + ",'" + TextBox1.Text + "','" + TextBox4.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList6.SelectedValue + "','"+DropDownList6.SelectedItem.Text+"','" + DropDownList12.Text + "','" + exprnc + "','" + TextBox2.Text + "','" + DropDownList11.SelectedItem + "','" + TextBox3.Text + "','" + DropDownList9.SelectedItem + "','" + DropDownList10.SelectedItem + "')";
        SqlCommand cmd = new SqlCommand(qry, con);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script> alert('Record saved Successfuly')</script>");
        }
        con.Close();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        post();
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }


    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }
    public int getcid(string un, SqlConnection con)
    {
        int c;
        adp = new SqlDataAdapter("Select company_id from Company where username='" + un + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        c = Convert.ToInt32(ds.Tables[0].Rows[0]["company_id"].ToString());
        return (c);
    }
}