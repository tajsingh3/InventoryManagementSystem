using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventorySystemWebApplication
{
    public partial class UpdateInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Inventory inv = (Inventory)Session["inventory"];

            this.UpdateGridView.DataSource = inv.Ds.Tables["products"];
            this.UpdateGridView.DataBind();
        }

        protected void UpdateGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Inventory inv = (Inventory)Session["inventory"];

            DataTable dt= inv.Ds.Tables["products"];
            DataRow[] drs = dt.Select();
            DataRow dr = drs[e.RowIndex];

            //Response.Write(dr["productid"]);

            this.ProductIDTextBox.Text = dr["productid"].ToString();
            this.ProductNameTextBox.Text = dr["name"].ToString();
            this.ProductCostTextBox.Text = dr["cost"].ToString();
            this.ProductListPriceTextBox.Text = dr["listprice"].ToString();
            this.ProductStockTextBox.Text = dr["stock"].ToString();
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            Inventory inv = (Inventory)Session["inventory"];

            DataTable dt = inv.Ds.Tables["products"];
            foreach(DataRow row in dt.Rows)
            {
                if (row["productid"].ToString() == this.ProductIDTextBox.Text)
                {
                    row["name"] = this.ProductNameTextBox.Text;
                    row["cost"] = this.ProductCostTextBox.Text;
                    row["listprice"] = this.ProductListPriceTextBox.Text;
                    row["stock"] = this.ProductStockTextBox.Text;
                }
            }

            this.UpdateGridView.DataSource = dt;
            this.UpdateGridView.DataBind();
        }
    }
}