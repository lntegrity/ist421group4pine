using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PWA.PineWS;

namespace PWA
{
    public partial class Leads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Service1 WS = new Service1();
            Lead[] ld = WS.GetLeads();
            LeadsList.DataSource = ld;
            LeadsList.DataBind();            
        }
        
    }
}
