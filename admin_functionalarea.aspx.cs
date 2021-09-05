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

public partial class admin_functionalarea : System.Web.UI.Page
{
    SqlDataAdapter adp = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            area();
        }
    }
    public void area()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string query = "select * from functional_area";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "area_name";
        DropDownList1.DataValueField = "area_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string qry = "insert into functional_area(area_name) values (@area_name)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@area_name",TextBox1.Text);
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
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string qry = "insert into post1(area_id,post_name) values (@area_id,@post_name)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@area_id", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@post_name", TextBox2.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script> alert('Record saved Successfuly')</script>");
        }

        clear();
    }
}