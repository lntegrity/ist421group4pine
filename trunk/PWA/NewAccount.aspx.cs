using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PWA
{
    public partial class NewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            //Insert information into Leads Table

            //Display thank you message, redirect to Home Page, set Application State to Authenticated
            lblThanks.Visible = true;
            System.Threading.Thread.Sleep(2000);
            Response.Redirect("Default.aspx");
            lblThanks.Visible = false;
        }
    }
}
