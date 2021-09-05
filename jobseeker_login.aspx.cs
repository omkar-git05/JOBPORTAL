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

public partial class jobseeker_login : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    SqlDataAdapter adp = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool Flag = false;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Login";
        dr = cmd.ExecuteReader();
        string Role = "";
        string UserName;
        string PassWord;

        while (dr.Read())
        {
            UserName = dr[0].ToString();
            PassWord = dr[1].ToString();
            int cid = 0;
            
            if (TextBox1.Text == UserName && TextBox2.Text == PassWord)
            {
                Session.Add("JName", UserName);
                Role = dr[2].ToString();
                Flag = true;

                cid = getcid(UserName);
                Session.Add("Cid", cid);
            }
        }
        dr.Close();

        if (Flag == false)
        {
            Label1.Visible = true;
            Label1.Text = "Not authorized";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
        if (Flag == true)
        {

            if (Role == "jobseeker")
            {

                Response.Redirect("~/jobseeker_profile1.aspx");

            }
        }
        con.Close();
    }
    public int getcid(string UserName)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        int js;

        string query = "select candidate_id from personal_details where username='" + UserName + "' ";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        js = Convert.ToInt32(ds.Tables[0].Rows[0]["candidate_id"].ToString());

        return (js);


    }
}