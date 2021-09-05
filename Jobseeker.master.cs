using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Jobseeker : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JName"].ToString() != "")
        {
           Label1.Text = Session["JName"].ToString();
        }

       // if (Session["JName"] != null)
        //{
         //   Label1.Text = Session["JName"].ToString();
       // }
    }
}
