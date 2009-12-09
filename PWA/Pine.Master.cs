using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PWA
{
    public partial class Pine : System.Web.UI.MasterPage
    {
        string _filepath = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LeadID"] == null)
            {
                btnLogout.Visible = false;
            }
            else
            {
                btnLogout.Visible = true;
            }
            if (!IsPostBack)
            {
                if (Session["LeadID"] == null)
                    btnLogout.Visible = false;
                else
                    btnLogout.Visible = true;
            }

            if (!Page.IsPostBack)
            {
                _filepath = Page.Request.FilePath;
            }

            //Set Nav Color
            
        }

        protected string getContent(string url, string title)
        {
            if (_filepath == url)
            {
                return "<a href=\"" + url + "\" class=\"CurrentPage\">" + title + "</a>";
            }

            return "<a href=\"" + url + "\">" + title + "</a>";
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["LeadID"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}
