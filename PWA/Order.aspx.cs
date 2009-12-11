using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PWA.PineWS;

namespace PWA
{
    public partial class Order : System.Web.UI.Page
    {

        MenuItems menuItems = new MenuItems();

        protected void Page_Load(object sender, EventArgs e)
        {
            ListBoxOrderItems.Text = menuItems.OrderInfo;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("HowItWorks.aspx");
        }

        public void LoadListBox()
        {
            
        }
    }
}
