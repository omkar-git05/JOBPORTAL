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

public partial class search_candidate : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select candidate_id,first_name,last_name,candidate_addrs,gender,contact_no,email_id,education,path from Personal_details where education=@education";
        cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@education", DropDownList1.SelectedItem.Text);
        adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        string filePath = GridView1.DataKeys[gvrow.RowIndex].Value.ToString();
        Response.ContentType = "application/ms-word";
        Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
        Response.TransmitFile(Server.MapPath(filePath));
        Response.End();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}