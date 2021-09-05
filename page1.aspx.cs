using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["js"].ToString() == null || Session["js"].ToString() == "")
            {
                Response.Redirect("JobSReg1.aspx");
            }
            else
            {
                Label1.Text = Session["js"].ToString();

            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/JsRegi.aspx");
    }
}