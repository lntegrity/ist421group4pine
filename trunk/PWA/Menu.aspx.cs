using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PWA.PineWS;
using System.Collections;


namespace PWA
{
    public partial class Menu : System.Web.UI.Page
    {
        
        double total = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Service1 WS = new Service1();
            MenuItems[] item = WS.GetMenu();
            GridView1.DataSource = item;
            GridView1.DataBind();
            

        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            
            Service1 WS = new Service1();
            ArrayList listItems = new ArrayList();//[Items.Count]
            MenuItems[] item = WS.GetMenu();
            for (int i = 0; i < item.Length; i++)
            {
                listItems.Add(item[i].Price);
            }
            
            ArrayList textBoxes = new ArrayList();
            textBoxes.Add(txtUnagi.Text);
            textBoxes.Add(txtTuna.Text);
            textBoxes.Add(txtShrimp.Text);
            textBoxes.Add(txtSalmon.Text);
            textBoxes.Add(txtDragon.Text);
            textBoxes.Add(txtChicken.Text);
            textBoxes.Add(txtCalifornia.Text);
            double[] quantities = new double[item.Length];
            double total = 0;
            for (int j = 0; j < item.Length; j++)
            {
                quantities[j] = Convert.ToDouble(textBoxes[j]) * Convert.ToDouble(listItems[j]);
                total += quantities[j];
 
            }
            
            TextBoxTotal.Text = Convert.ToString(total);

            //Response.Redirect("Order.aspx");

        }
    }
}
