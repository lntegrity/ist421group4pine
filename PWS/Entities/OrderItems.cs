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

namespace PWS.Entities
{
    public class OrderItems
    {
        private int _OrderID;

        public int OrderID
        {
            get { return _OrderID; }
            set { _OrderID = value; }
        }
        private int _MenuID;

        public int MenuID
        {
            get { return _MenuID; }
            set { _MenuID = value; }
        }
        private int _Quantity;

        public int Quantity
        {
            get { return _Quantity; }
            set { _Quantity = value; }
        }
        private decimal _TotalUnitPrice;

        public decimal TotalUnitPrice
        {
            get { return _TotalUnitPrice; }
            set { _TotalUnitPrice = value; }
        }

        private decimal _LeadID;

        public decimal LeadID
        {
            get { return _LeadID; }
            set { _LeadID = value; }
        }
    }
}
