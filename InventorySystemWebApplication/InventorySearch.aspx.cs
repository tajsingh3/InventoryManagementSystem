using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventorySystemWebApplication
{
    public partial class InventorySearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ProductNameSearchButton_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {
                string searchProduct = this.ProductNameSearchTextBox.Text;
                Inventory inventory = (Inventory)Session["inventory"];
                foreach (var product in inventory.ProductList)
                {
                    if (searchProduct.ToUpper() == product.Name.ToUpper())
                    {
                        this.ProductIDTextBox.Text = product.ProductId.ToString();
                        this.ProductNameTextBox.Text = product.Name;
                        this.ProductCostTextBox.Text = product.Cost.ToString();
                        this.ProductListPriceTextBox.Text = product.ListPrice.ToString();
                        this.ProductStockTextBox.Text = product.Stock.ToString();

                        break;
                    }

                }
                //this.ProductIDTextBox.Text = "page validated";


            }
            else
            {
                //this.ProductIDTextBox.Text = "page is not validated";
            }

            /*Inventory inv= (Inventory)Session["inventory"];
            List<Product> prList = inv.ProductList;

            Product pr = prList[0];

            this.ProductNameTextBox.Text = pr.Name;*/
        }

        protected void HomeButto_Click(object sender, EventArgs e)
        {

        }
    }
}