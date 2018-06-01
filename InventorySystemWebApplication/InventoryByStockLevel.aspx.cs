using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventorySystemWebApplication
{
    public partial class LowInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StockLevelEnterButton1_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {               
                
                int stockLevel = int.Parse(this.StockLevelTextBox.Text);

                WcfService1.Service1 client = new WcfService1.Service1();
                List<Product> prList = client.GetProducts(stockLevel);

                if (prList.Count != 0)
                {
                    this.ListStatusLabel.Text = "";
                    this.GridView1.DataSource = prList;
                    this.GridView1.DataBind();
                }
                else
                {
                    this.ListStatusLabel.Text = $"There are no products less than or equal to a stock of {stockLevel}";
                    this.GridView1.DataSource = null;
                    this.GridView1.DataBind();
                }
                               
            }
        }
    }
}