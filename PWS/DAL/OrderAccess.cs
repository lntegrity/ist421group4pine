using System;
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
    public class OrderAccess
    {
        private static OrderItems orderFlds(DataRow Row)
        {
            OrderItems order = new OrderItems();
            order.OrderID = (int)Row["OrderID"];
            order.MenuID = (int)Row["MenuID"];
            order.Quantity = (int)Row["Quantity"];
            order.TotalUnitPrice = (decimal)Row["TotalUnitPrice"];
            return order;
        }

        private static OrderItems[] DataSetToOrderArray(DataSet ds)
        {
            OrderItems[] order = new OrderItems[ds.Tables[0].Rows.Count];
            for (int i = 0; i < ds.Tables[0].Rows.Count; ++i)
            {
                order[i] = orderFlds(ds.Tables[0].Rows[i]);
            }
            return order;
        }

        public static bool InsertOrder(OrderItems newOrder)
        {
            int temp = SqlHelper.ExecuteNonQuery(
            ConfigurationManager.ConnectionStrings["PineDb"].
            ConnectionString, "Order_Insert_Order", newOrder.OrderID, newOrder.MenuID, newOrder.Quantity, newOrder.TotalUnitPrice, newOrder.LeadID);
            if (temp > 0)
                return true;
            return false;
        }

        public static int GetOrderCount(int LeadID)
        {
            int count = Convert.ToInt16(SqlHelper.ExecuteScalar(
            ConfigurationManager.ConnectionStrings["PineDb"].
            ConnectionString, "Order_Count_Orders", LeadID));
            return count;

        }

        public static bool OrderTableUpdate(Orders newOrderHistory) 
        { 
        
        int temp = SqlHelper.ExecuteNonQuery(
            ConfigurationManager.ConnectionStrings["PineDb"].
            ConnectionString, "Copy_To_Order", newOrderHistory.OrderID, newOrderHistory.Total, DateTime.Now);
            if (temp > 0)
                return true;
            return false;
        }


        }
    }

