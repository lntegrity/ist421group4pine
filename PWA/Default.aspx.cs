using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PWA.PineWS;

namespace PWA
{
    public partial class Default : System.Web.UI.Page
    {
        Service1 WS = new Service1();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
