using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InventorySystemWebApplication
{
    public class Product
    {
        public string Name { get; set; }
        public int ProductId { get; set; }
        public double Cost { get; set; }
        public double ListPrice { get; set; }
        public int Stock { get; set; }

        public Product(string name, int productId, double cost, double listPrice, int stock)
        {
            Name = name;
            ProductId = productId;
            Cost = cost;
            ListPrice = listPrice;
            Stock = stock;
        }
    }
}