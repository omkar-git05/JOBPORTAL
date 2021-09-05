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

public partial class search_by_company : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            company();
            Button2.Visible = false;
        }
    }
    public void company()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from Company";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "company_name";
        DropDownList1.DataValueField = "company_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from Job_post where company_id=" + DropDownList1.SelectedValue;

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