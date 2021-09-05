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

public partial class admin_country : System.Web.UI.Page
{
    SqlDataAdapter adp = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            country();
            state();
        }
    }

    public void country()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from State";
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string qry = "insert into Country(country_name) values ('" + TextBox1.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script> alert('Record saved Successfuly')</script>");
        }

        clear();
    }
    void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";

        TextBox3.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string qry = "insert into State(country_id,state_name) values (" + DropDownList1.SelectedValue + ",'" + TextBox2.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script> alert('Record saved Successfuly')</script>");
        }

        clear();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string qry = "insert into City(state_id,city_name) values (" + DropDownList2.SelectedValue + ",'" + TextBox3.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script> alert('Record saved Successfuly')</script>");
        }

        clear();
    }
}