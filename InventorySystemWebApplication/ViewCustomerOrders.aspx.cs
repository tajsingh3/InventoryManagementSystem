using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventorySystemWebApplication
{
    public partial class ViewCustomerOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {               
                int orderID = int.Parse(this.OrderIDDTextBox.Text);

                CustomerSystem cs = (CustomerSystem)Session["customersystem"];
                List<CustomerOrder> customerOrderList = cs.CustomerOrderList;
                List<CustomerOrderLine> customerOrderLineList = cs.CustomerOrderLineList;
                List<Customer> customerList = cs.CustomerList;

                Inventory inv= (Inventory)Session["inventory"];

                var fullOrders = from o in customerOrderList
                                 join col in customerOrderLineList
                                 on o.ID equals col.OrderID                              
                                 where col.OrderID==orderID
                                 select new { OrderID = o.ID,col.CustomerID, Date=o.Date, col.ProductID, col.Quantity };

              
                var fullOrdWithProdNames = from f in fullOrders
                                           join p in inv.ProductList
                                           on f.ProductID equals p.ProductId                                      
                                           select new { f.OrderID,f.CustomerID,f.Date,p.Name,p.ListPrice,f.Quantity};

                var firstelement = fullOrdWithProdNames.ElementAt(0);
                FullCustomerOrder fo = new FullCustomerOrder();
                fo.OrderID = firstelement.OrderID;
                fo.CustomerID = firstelement.CustomerID;
                fo.Date = firstelement.Date;
                foreach(var orderline in fullOrdWithProdNames)
                {
                    Item it = new Item();
                    it.Name = orderline.Name;
                    it.ListPrice = orderline.ListPrice;
                    it.Quantity = orderline.Quantity;
                    fo.ItemList.Add(it);
                }

                fo.CalculateTotal();

                this.OrderIDTextBox.Text = fo.OrderID.ToString();
                this.CustomerIDDTextBox.Text = fo.CustomerID.ToString();
                this.DateTextBox.Text = fo.Date.ToString();
                this.OrderTotalTextBox.Text = fo.Total.ToString();


                this.CustomerOrderGridView.DataSource = fo.ItemList;
                this.CustomerOrderGridView.DataBind();
            }
        }
        
    }
}