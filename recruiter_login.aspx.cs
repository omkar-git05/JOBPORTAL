using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class recruiter_login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int RowCount;
        string UserName = null;
        string PassWord = null;
        
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        cmd = new SqlCommand("select * from Login where username=@username and password=@password", con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);

        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();

        da.Fill(dt);
        bool flag = false;
        RowCount = dt.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            UserName = dt.Rows[i]["username"].ToString();
            PassWord = dt.Rows[i]["password"].ToString();

            if (UserName == TextBox1.Text && PassWord == TextBox2.Text)
            {
                Session["User"] = UserName;
               if( dt.Rows[i]["role"].ToString() == "recruiter")
                     flag = true;             
            }

        }
        if(flag==false)
        {
            Label1.Visible = true;
            Label1.Text = "Invalid UserName and Password! Please try again...";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        if (flag == true)
        {

            Response.Redirect("~/recruiter_profile.aspx");
        }
        
    }
}