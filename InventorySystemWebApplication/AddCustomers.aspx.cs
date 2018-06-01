using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventorySystemWebApplication
{
    public partial class ViewCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddCustomerButton_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {
                WcfService1.Service1 client = new WcfService1.Service1();
                List<Product> prList = client.GetProducts(10);

                this.GridView1.DataSource = prList;
                this.GridView1.DataBind();
            }
        }

        protected void HomeButto_Click(object sender, EventArgs e)
        {
            //Response.Redirect("HomePage.aspx");
        }
    }
}