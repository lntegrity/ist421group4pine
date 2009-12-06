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
    public class MenuItems
    {
        private int itemId;
        private string itemName; 
        private string description;
        private decimal price;

        public int ItemId
        {
            get { return itemId; }
            set { itemId = value; }
        }
        

        public string ItemName
        {
            get { return itemName; }
            set { itemName = value; }
        }
        

        public string Description
        {
            get { return description; }
            set { description = value; }
        }
        

        public decimal Price
        {
            get { return price; }
            set { price = value; }
        }
    }
}
