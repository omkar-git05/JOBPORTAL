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

public partial class JobSReg1 : System.Web.UI.Page
{
    SqlDataAdapter adp = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string qry1 = "insert into Login (username, password, role) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','jobseeker')";
        cmd = new SqlCommand(qry1, con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Session["js"] = TextBox1.Text;
            Response.Write("<script> alert('Account created Successfuly')</script>");

        }       
            con.Close();
            Server.Transfer("~/page1.aspx");
        
    }
}