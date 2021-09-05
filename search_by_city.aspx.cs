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
using System.IO;

public partial class search_by_city : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            country();
            DropDownList2.Items.Insert(0, new ListItem("select", "0"));
            DropDownList3.Items.Insert(0, new ListItem("select", "0"));
            Button2.Visible = false;
        }
    }
    public void country()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from Country";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "country_name";
        DropDownList1.DataValueField = "country_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }
    public void state()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from State where State.country_id=" + DropDownList1.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "state_name";
        DropDownList2.DataValueField = "state_id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();

    }
    public void city()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        SqlDataAdapter adp = null;
        string query = "select * from City where City.state_id=" + DropDownList2.SelectedValue;

        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataTextField = "city_name";
        DropDownList3.DataValueField = "city_id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from Job_post where city_id=" + DropDownList3.SelectedValue;

        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        Button2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        int cid = 0;
        cid = Convert.ToInt32(Session["Cid"].ToString());

        int rws = 0;
        rws = Convert.ToInt32(GridView1.Rows.Count.ToString());

        DateTime time = DateTime.Now;
        string format = "yyyy-MM-dd HH:mm:ss";

        for (int i = 0; i < rws; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");

            if (chk.Checked == true)
            {
                string a = null, b = null, c = null, d = null;

                a = GridView1.Rows[i].Cells[2].Text;
                b = GridView1.Rows[i].Cells[3].Text;
                c = GridView1.Rows[i].Cells[1].Text;
                d = GridView1.Rows[i].Cells[4].Text;
                string query = "insert into job_applied1 (company_id,company_name,jobpost_id,job_title,candidate_id,applied_date) values(@company_id,@company_name,@jobpost_id,@job_title,@candidate_id,@applied_date )";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@company_id", a);
                cmd.Parameters.AddWithValue("@company_name", b);
                cmd.Parameters.AddWithValue("@jobpost_id", c);
                cmd.Parameters.AddWithValue("@job_title", d);
                cmd.Parameters.AddWithValue("@candidate_id", cid);
                cmd.Parameters.AddWithValue("@applied_date", time.ToString(format));
                int g = Convert.ToInt32(cmd.ExecuteNonQuery());
                if (g > 0)
                {
                    Response.Write("<script> alert('Job applied Successfuly')</script>");
                }
            }
            else
            {
                Response.Write("<script> alert('please select job for apply')</script>");
            }


        }
    }
}