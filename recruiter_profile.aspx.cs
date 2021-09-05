using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class recruiter_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string RName = Session["User"].ToString();
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter(" select * from Company where username='" + RName + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
    }
}