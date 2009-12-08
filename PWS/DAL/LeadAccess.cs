using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PWS.Entities;
using System.Data;
using System.Configuration;

namespace PWS.DAL
{
    public class LeadAccess
    {
        private static Lead leadFlds(DataRow Row)
        {
            Lead l = new Lead();
            l.ID = (int)Row["fldLeadID"];
            l.Name = Row["fldLeadName"] as string;
            l.Address = Row["fldLeadAddress"] as string;
            l.City = Row["fldLeadCity"] as string;
            l.State = Row["fldLeadState"] as string;
            l.Phone = Row["fldLeadPhone"] as string;
            l.Zip = (int)Row["fldLeadZip"];
            return l;
        }

        private static Lead[] DataSetToLeadsArray(DataSet ds)
        {
            Lead[] leads = new Lead[ds.Tables[0].Rows.Count];
            for (int i = 0; i < ds.Tables[0].Rows.Count; ++i)
            {
                leads[i] = leadFlds(ds.Tables[0].Rows[i]);
            }
            return leads;
        }

        private static Lead DataSetToLead(DataSet ds)
        {
            Lead lead = new Lead();
            lead = leadFlds(ds.Tables[0].Rows[0]);
            return lead;
        }

        public static bool InsertLead(Lead lead)
        {
            int temp = SqlHelper.ExecuteNonQuery(
            ConfigurationManager.ConnectionStrings["PineDb"].
            ConnectionString, "Lead_Insert_Lead", lead.Name, lead.Address, lead.City, lead.State, lead.Zip, lead.Phone);
            if (temp > 0)
                return true;
            return false;
        }

        public static Lead[] GetLeads()
        {
            DataSet ds = SqlHelper.ExecuteDataset(
            ConfigurationManager.ConnectionStrings["PineDb"].
            ConnectionString, "Leads_Get_Leads");
            return DataSetToLeadsArray(ds);
        }

        public static Lead LoginLead(string LeadPhone)
        {
            DataSet ds = SqlHelper.ExecuteDataset(
            ConfigurationManager.ConnectionStrings["PineDb"].
            ConnectionString, "Leads_Login_Lead", LeadPhone);
            return DataSetToLead(ds);
        }

        public static int ValidateLogin(string strPhoneNumber)
        {
            int count = Convert.ToInt16(SqlHelper.ExecuteScalar(
            ConfigurationManager.ConnectionStrings["PineDb"].
            ConnectionString, "ValidateLogin", strPhoneNumber));
            return count;

        }
    }
}
