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
            // for testing Session var
            //string tempstring = (string)Session["LeadID"];

            //Check for Application State; if authenticated, only display the Continue button
            if (Session["LeadID"] == null)
            {
                pnlAccount.Visible = true;
                btnContinue.Visible = false;
                MenuPanel.Visible = false;
            }
            else
            {
                pnlAccount.Visible = false;
                btnContinue.Visible = true;
                MenuPanel.Visible = true;
            }

            //Dynamically Update Total
            //foreach (TextBox text in textBoxes)
            //    if (text.TextChanged)
            //        TextBoxTotal.Text = Convert.ToString(total);
            //if (TextBoxTotal.Text == "")
            //    btnContinue.Enabled = false;
            //else
            //    btnContinue.Enabled = true;
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
                     
            OrderItems[] o = new OrderItems[7];
            
            int numOrders = WS.GetOrderCount(Convert.ToInt16(Session["LeadID"]));            

            for (int j = 0; j < 7; j++)
            {
                if (Convert.ToInt16(textBoxes[j]) != 0)
                {                    
                    o[j] = new OrderItems();
                    o[j].OrderID = numOrders + 1;
                    o[j].MenuID = Convert.ToInt16(GridView1.Rows[j].Cells[0].Text);
                    o[j].Quantity = Convert.ToInt16(textBoxes[j]);
                    o[j].TotalUnitPrice = Convert.ToDecimal(GridView1.Rows[j].Cells[3].Text);
                    o[j].LeadID = (Convert.ToInt16(Session["LeadID"]));
                    Boolean success = WS.InsertOrder(o[j]);
                }
            }
            TextBoxTotal.Text = Convert.ToString(total);

            //Move this to OrderHistory?
            Orders newOrderHistory = new Orders();

            newOrderHistory.OrderID = numOrders + 1;
            newOrderHistory.Total = Convert.ToDecimal(total);

            Boolean success1 = WS.CopyToOrder(newOrderHistory);

            Response.Redirect("Confirmation.aspx");
        }
        
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            //Check phone number against the DB
            Service1 WS = new Service1();
            int validatePhone = WS.ValidateLogin(txtPhoneLogon.Text);

            //If number is valid, enable the Continue button, hide Account Panel
            if (validatePhone == 1)
            {
                Lead lead = WS.LoginLead(txtPhoneLogon.Text.ToString());
                Session["LeadID"] = lead.ID;
                pnlAccount.Visible = false;
                btnContinue.Visible = true;
            }
            if (Session["LeadID"] == null)
            {
                pnlAccount.Visible = true;
                btnContinue.Visible = false;
                MenuPanel.Visible = false;
            }
            else
            {
                pnlAccount.Visible = false;
                btnContinue.Visible = true;
                MenuPanel.Visible = true;
            }
                        
        }

        protected void btnNewUser_Click(object sender, EventArgs e)
        {
            //Direct to NewAccount page
            Response.Redirect("NewAccount.aspx");
        }
    }
}
