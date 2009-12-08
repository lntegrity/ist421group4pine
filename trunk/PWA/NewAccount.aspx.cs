using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PWA.PineWS;

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
            Lead lead = new Lead();
            lead.Name = txtLeadName.Text;
            lead.Address = txtLeadAddress.Text;
            lead.City = txtLeadCity.Text;
            lead.State = txtLeadState.SelectedValue;
            lead.Zip = Convert.ToInt16(txtLeadZip.Text);
            lead.Phone = txtLeadPhone.Text;

            Service1 WS = new Service1();
            Boolean success = WS.InsertLead(lead);
            Lead authedLead = WS.LoginLead(lead.Phone);
            Session["LeadID"] = authedLead.ID;
            //Display thank you message, redirect to Home Page, set Application State to Authenticated
            lblThanks.Visible = true;
            System.Threading.Thread.Sleep(2000);
            Response.Redirect("Menu.aspx");
            lblThanks.Visible = false;
        }
    }
}
