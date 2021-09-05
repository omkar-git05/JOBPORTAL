using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class recruiter_regi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            que();
        }
    }
    public void que()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select * from Question", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "question";
        DropDownList1.DataValueField = "que_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));
        con.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Company(company_name,username,que_id,ansr,contact_person,company_contact,company_addrs,company_email, company_details) values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox7.Text + "')", con);
         cmd.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("insert into Login (username,password,role) values('" + TextBox1.Text + "','" + TextBox2.Text + "','recruiter')", con);
         cmd2.ExecuteNonQuery();                  
        con.Close();
        Response.Write("<script> alert('Profile created Successfuly')</script>");
        Response.Redirect("~/recruiter_Login.aspx");

    }

}