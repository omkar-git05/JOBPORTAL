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

public partial class recruiter_applied_job : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            ab();
            id();          
        }
    }

    public void ab()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string un = null;
        un = Session["User"].ToString();
        int c = getcid(un, con);
        Session["ID"] = c;

        string query = "select * from Job_applied1 where company_id=" + c;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
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

    public void id()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string un = null;
        un = Session["User"].ToString();
        int c = getcid(un, con);
        Session["ID"] = c;
       
        string query = "select * from Job_applied1 where company_id="+c;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "applied_id";
        DropDownList1.DataValueField = "candidate_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string c = "select candidate_id,first_name,last_name,candidate_addrs,gender,contact_no,email_id,education,path from Personal_details where candidate_id=" + DropDownList1.SelectedValue;
        adp = new SqlDataAdapter(c, con);
        DataSet ds3 = new DataSet();
        adp.Fill(ds3);
        gvDetails.DataSource = ds3;
        gvDetails.DataBind();

    }

    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        string filePath = gvDetails.DataKeys[gvrow.RowIndex].Value.ToString();
        Response.ContentType = "application/ms-word";
        Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
        Response.TransmitFile(Server.MapPath(filePath));
        Response.End();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        int rws = 0;
        rws = Convert.ToInt32(GridView1.Rows.Count.ToString());

        DateTime time = DateTime.Now;
        string format = "yyyy-MM-dd HH:mm:ss";

        for (int i = 0; i < rws; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");

            if (chk.Checked == true)
            {
                string a = null, b = null, c = null, d = null, f = null, g = null;

                a = GridView1.Rows[i].Cells[1].Text;
                b = GridView1.Rows[i].Cells[2].Text;
                c = GridView1.Rows[i].Cells[3].Text;
                d = GridView1.Rows[i].Cells[4].Text;
                f = GridView1.Rows[i].Cells[5].Text;
                g = GridView1.Rows[i].Cells[6].Text;
                string query = "insert into Selected_candidate (applied_id,company_id,company_name,jobpost_id,job_title,candidate_id,selected_date,message) values(@applied_id,@company_id,@company_name,@jobpost_id,@job_title,@candidate_id,@selected_date,@message)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@applied_id", a);
                cmd.Parameters.AddWithValue("@company_id", b);
                cmd.Parameters.AddWithValue("@company_name", c);
                cmd.Parameters.AddWithValue("@jobpost_id", d);
                cmd.Parameters.AddWithValue("@job_title", f);
                cmd.Parameters.AddWithValue("@candidate_id", g);
                cmd.Parameters.AddWithValue("@selected_date", time.ToString(format));
                cmd.Parameters.AddWithValue("@message", TextBox1.Text);
                int h = Convert.ToInt32(cmd.ExecuteNonQuery());
                if (h > 0)
                {
                    Response.Write("<script> alert('send message Successfuly')</script>");
                }
            }

        }

    }
}
