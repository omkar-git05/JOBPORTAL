using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool Flag = false;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * from Login";
        dr = cmd.ExecuteReader();
        string Role = "";
        while (dr.Read())
        {
            string Username = dr[0].ToString();
            string Password = dr[1].ToString();
            if (TextBox1.Text == Username && TextBox2.Text == Password)
            {
                Role = dr[2].ToString();
                Flag = true;

            }
        }
        dr.Close();
        if (Flag == false)
        {
            Label1.Visible = true;
            Label1.Text = "Not Authorized";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
        if (Flag == true)
        {
            if (Role == "admin")
            {
                Session["User"] = TextBox1.Text;
                Label1.Visible = true;
                Label1.Text = "Authorized";
                Label1.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("~/admin_js_profiles.aspx");
            }
        }
        con.Close();
    }
}