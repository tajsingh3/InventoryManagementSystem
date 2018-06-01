using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventorySystemWebApplication
{
    public partial class RemoveInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Inventory inv= (Inventory)Session["inventory"];

            this.DeleteGridView.DataSource = inv.Ds.Tables["products"];
            this.DeleteGridView.DataBind();
        }

        

        protected void DeleteGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            

            Inventory inv = (Inventory)Session["inventory"];
            inv.Ds.Tables["products"].Rows.RemoveAt(e.RowIndex);
            this.DeleteGridView.DataSource = inv.Ds.Tables["products"];
            this.DeleteGridView.DataBind();
        }
    }
}