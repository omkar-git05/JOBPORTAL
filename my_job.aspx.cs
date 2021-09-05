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

public partial class my_job : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {       
        if (!IsPostBack)
        {
            showData();

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            int cid = 0;
            cid = Convert.ToInt32(Session["Cid"].ToString());
            string query = "select applied_id,company_name,job_title,candidate_id,selected_date,message from selected_candidate where candidate_id=@candidate_id";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@candidate_id", cid);
            adp = new SqlDataAdapter(cmd);
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);
            GridView2.DataSource = ds1;
            GridView2.DataBind();

        }
    }
    protected void showData()
    {

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        int cid = 0;
        cid = Convert.ToInt32(Session["Cid"].ToString());
        string query = "select * from Job_applied1 where candidate_id=" + cid;

        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
               
    }
    protected void DeleteRecord(int a)
    {
        
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        cmd = new SqlCommand("delete from Job_applied1 where applied_id=@applied_id", con);
        cmd.Parameters.AddWithValue("@applied_id", a );
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int rws = 0;
        rws = Convert.ToInt32(GridView1.Rows.Count.ToString());
        // Label22.Text = GridView1.Rows.Count.ToString();
        

        for (int i = 0; i < rws; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");

            if (chk.Checked == true)
            {
                int a = Convert.ToInt32( GridView1.Rows[i].Cells[1].Text);
                DeleteRecord(a);
            }
        }
        showData();
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        int cid = 0;
        cid = Convert.ToInt32(Session["Cid"].ToString());
        string query = "select applied_id,company_name,job_title,candidate_id,selected_date,message from selected_candidate where candidate_id=@candidate_id";
        cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@candidate_id", cid);
        adp = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        adp.Fill(ds1);
        GridView2.DataSource = ds1;
        GridView2.DataBind();
    }
}