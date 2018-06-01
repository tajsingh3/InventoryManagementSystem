using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InventorySystemWebApplication
{
    public class CustomerOrderLine
    {
        public int ProductID { get; set; }
        public int OrderID { get; set; }
        public int CustomerID { get; set; }
        public int Quantity { get; set; }

        public CustomerOrderLine()
        {

        }
    }
}