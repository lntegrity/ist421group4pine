﻿using System;
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
        public Lead LoginLead(string LeadPhone)
        {
            Lead lead = LeadAccess.LoginLead(LeadPhone);
            return lead;
        }
        [WebMethod]
        public MenuItems[] GetMenu()
        {
            MenuItems[] menu = MenuAccess.GetMenu();
            return menu;
        }

        [WebMethod]
        public bool InsertOrder(OrderItems newOrder)
        {
            return OrderAccess.InsertOrder(newOrder);
        }

        [WebMethod]
        public int GetOrderCount(int LeadID)
        {
            return OrderAccess.GetOrderCount(LeadID);
        }

        [WebMethod]
        public bool CopyToOrder(Orders newOrderHistory)
        {
            return OrderAccess.OrderTableUpdate(newOrderHistory);
        }

        [WebMethod]
        public int ValidateLogin(string PhoneNumber)
        {
            return LeadAccess.ValidateLogin(PhoneNumber);
        }

        [WebMethod]
        public bool InsertLead(Lead lead)
        {
            return LeadAccess.InsertLead(lead);
        }
    }
}
