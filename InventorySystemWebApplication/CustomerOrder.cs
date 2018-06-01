using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InventorySystemWebApplication
{
    public class CustomerOrder
    {
        public int ID { get; set; }
        public DateTime Date { get; set; }
        public double Total { get; set; }       

        public CustomerOrder()
        {

        }
    }
}