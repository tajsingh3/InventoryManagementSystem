using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventorySystemWebApplication
{
    public partial class AddInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddProductButton_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {              
                string name = this.ProductNameTextBox.Text;
                double cost = double.Parse(this.ProductCostTextBox.Text);
                double listPrice = double.Parse(this.ProductListPriceTextBox.Text);
                int stock = int.Parse(this.ProductStockTextBox.Text);

                Inventory inv = (Inventory)Session["inventory"];
                DataSet ds = inv.Ds;

                DataRow productRow= ds.Tables["products"].NewRow();
                productRow.SetField("name", name);
                productRow.SetField("cost", cost);
                productRow.SetField("listprice", listPrice);
                productRow.SetField("stock", stock);

                ds.Tables["products"].Rows.Add(productRow);

                string connStr = Global.connectionString;
                using (SqlConnection myConn = new SqlConnection(connStr))
                {
                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM product", myConn);
                    SqlCommandBuilder cmdBuilder = new SqlCommandBuilder(da);
                    da.Update(ds,"products");
                }

                this.StatusLabel.Text = "Product Added";
                this.ProductNameTextBox.Text = "";
                this.ProductCostTextBox.Text = "";
                this.ProductListPriceTextBox.Text = "";
                this.ProductStockTextBox.Text = "";
            }
            else
            {
                this.StatusLabel.Text = "";
            }
        }
    }
}