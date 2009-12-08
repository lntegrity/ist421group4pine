using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PWA
{
    public partial class HowItWorks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSetLeadID_Click(object sender, EventArgs e)
        {
            Session["LeadID"] = SetLeadID.Text;
        }
    }
}
