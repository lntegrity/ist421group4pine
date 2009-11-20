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

        public static Lead[] GetLeads()
        {
            DataSet ds = SqlHelper.ExecuteDataset(
            ConfigurationManager.ConnectionStrings["PineDb"].
            ConnectionString, "Leads_Get_Leads");
            return DataSetToLeadsArray(ds);
        }

    }
}
