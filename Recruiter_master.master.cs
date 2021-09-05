using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Recruiter_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["User"].ToString() != "" && Session["User"].ToString() !=null)
        {
            Label1.Text = Session["User"].ToString();
        }
    }
}
