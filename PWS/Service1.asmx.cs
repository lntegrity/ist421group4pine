using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using PWS.Entities;
using PWS.DAL;

namespace PWS
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello Everybody!!!";
        }

        [WebMethod]
        public int AddTwoNumbers(int num1, int num2)
        {
            int num3 = num1 + num2;
            return num3;
        }

        [WebMethod]
        public int MultiplyTwoNumbers(int num1, int num2)
        {
            int num3 = num1 * num2;
            return num3;
        }

        //[WebMethod]
        //public Lead GetLead()
        //{
        //    Lead leadObject = new Lead();
        //    leadObject.ID = 1;
        //    leadObject.Name = "Tree World";
        //    leadObject.Address = "100 Oak Lane";
        //    return leadObject;
        //}

        [WebMethod]
        public Lead[] GetLeads()
        {
            Lead[] leads = LeadAccess.GetLeads();
            return leads;
        }

        [WebMethod]
        public MenuItems[] GetMenu()
        {
            MenuItems[] menu = MenuAccess.GetMenu();
            return menu;
        }
    }
}
