﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using PWS.Entities;


namespace PWS.DAL
{
    public class MenuAccess
    {
        private static MenuItems menuFlds(DataRow Row)
        {
            MenuItems menu = new MenuItems();
            menu.ItemId = (int)Row["ItemID"];
            menu.ItemName = Row["ItemName"] as string;
            menu.Description = Row["Description"] as string;
            menu.Price = (decimal)Row["Price"];
            return menu;
        }

        private static MenuItems[] DataSetToMenuArray(DataSet ds)
        {
            MenuItems[] menu = new MenuItems[ds.Tables[0].Rows.Count];
            for (int i = 0; i < ds.Tables[0].Rows.Count; ++i)
            {
                menu[i] = menuFlds(ds.Tables[0].Rows[i]);
            }
            return menu;
        }

        public static MenuItems[] GetMenu()
        {
            DataSet ds = SqlHelper.ExecuteDataset(
            ConfigurationManager.ConnectionStrings["PineDb"].
            ConnectionString, "StoredProcedure1");
            return DataSetToMenuArray(ds);

        }
    }
}