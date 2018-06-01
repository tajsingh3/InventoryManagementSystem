using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InventorySystemWebApplication
{
    public class FullCustomerOrder
    {
        public int OrderID { get; set; }
        public int CustomerID { get; set; }
        public DateTime Date { get; set; }
        public List<Item> ItemList { get; set; }
        public double Total { get; set; }

        public FullCustomerOrder()
        {
            ItemList = new List<Item>();
        }

        public void CalculateTotal()
        {
            foreach(var item in this.ItemList)
            {
                Total += item.ListPrice*item.Quantity;
            }
        }

    }
}