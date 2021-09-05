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

public partial class JsRegi : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = Session["js"].ToString();

            que();

            country();
           DropDownList4.Items.Insert(0, new ListItem("select", "0"));
           DropDownList5.Items.Insert(0, new ListItem("select", "0"));

        }
    }
    public void que()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string query = "select * from Question";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "question";
        DropDownList1.DataValueField = "que_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));
        con.Close();
    }
    public void country()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string query = "select * from Country";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "country_name";
        DropDownList2.DataValueField = "country_id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }


    public void state()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string query = "select * from State where State.country_id=" + DropDownList2.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList4.DataSource = ds.Tables[0];
        DropDownList4.DataTextField = "state_name";
        DropDownList4.DataValueField = "state_id";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void city()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        SqlDataAdapter adp = null;
        string query = "select * from City where City.state_id=" + DropDownList4.SelectedValue;

        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList5.DataSource = ds.Tables[0];
        DropDownList5.DataTextField = "city_name";
        DropDownList5.DataValueField = "city_id";
        DropDownList5.DataBind();
        DropDownList5.Items.Insert(0, new ListItem("select", "0"));
        con.Close();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        DateTime time = DateTime.Now;
        string format = "yyyy-MM-dd HH:mm:ss";

        string gndr = null;

        if (RadioButton1.Checked == true)
        {
            gndr = RadioButton1.Text;
        }
        else
        {
            gndr = RadioButton2.Text;
        }

        string File1 = File_Upload(FileUpload1);

        string qry2 = "insert into Personal_details (username, que_id, ans, profile_date, first_name, last_name, candidate_addrs, city_id, gender, dob, contact_no, email_id,education,path) values (@username, @que_id, @ans, @profile_date, @first_name, @last_name, @candidate_addrs, @city_id, @gender, @dob, @contact_no, @email_id, @education, @path)";
        SqlCommand cmd = new SqlCommand(qry2, con);
        cmd.Parameters.AddWithValue("@username", Label1.Text);
        cmd.Parameters.AddWithValue("@que_id",DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@ans",TextBox4.Text);
        cmd.Parameters.AddWithValue("@profile_date",time.ToString(format));
        cmd.Parameters.AddWithValue("@first_name",TextBox1.Text);
        cmd.Parameters.AddWithValue("@last_name",TextBox2.Text);
        cmd.Parameters.AddWithValue("@candidate_addrs",TextBox5.Text);
        cmd.Parameters.AddWithValue("@city_id",DropDownList5.SelectedValue);
        cmd.Parameters.AddWithValue("@gender",gndr);
        cmd.Parameters.AddWithValue("@dob",TextBox3.Text);
        cmd.Parameters.AddWithValue("@contact_no",TextBox6.Text);
        cmd.Parameters.AddWithValue("@email_id",TextBox7.Text);
        cmd.Parameters.AddWithValue("@education",DropDownList3.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@path",File1);
        
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            //Session["js"] = TextBox1.Text;

            Response.Write("<script> alert('Record saved Successfuly ..please Login to access your account')</script>");
        }

        con.Close();
        Server.Transfer("~/jobseeker_login.aspx");
    }

    public string File_Upload(System.Web.UI.WebControls.FileUpload fp)
    {
        string filepath, folderpath, savepath, folderpathnew, savepathnew;
        folderpath = System.Web.HttpContext.Current.Server.MapPath("Resumes");
        folderpathnew = "~\\Resumes";
        filepath = Path.GetFileName(fp.PostedFile.FileName);
        string uniq = Guid.NewGuid().ToString();
        savepath = folderpath + "\\" + uniq + "_" + filepath;

        savepathnew = folderpathnew + "\\" + filepath;

        fp.SaveAs(savepath);
        return (savepathnew);
    }
}