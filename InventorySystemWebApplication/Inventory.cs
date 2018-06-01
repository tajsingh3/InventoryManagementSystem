using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace InventorySystemWebApplication
{
    public class Inventory
    {
        private string connStr;
        public DataSet Ds { set; get; }
        private const int LOWSTOCKTHRESHOLD = 10;
        public List<Product> ProductList { get; set; }

        public Inventory()
        {
            ProductList = new List<Product>();
        }

        public void AddProduct(Product product)
        {
            //this.ProductList.Add(product);
        }

        public void RemoveProduct(int productId)
        {

        }

        public List<Product> FindLowStockProducts()
        {

            return new List<Product>();
        }

        public void Load()
        {
            connStr= Global.connectionString;
            Ds = new DataSet();

            using (SqlConnection myConn = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM product", myConn);
                da.Fill(Ds, "products");
            }

            foreach (DataRow pr in Ds.Tables["products"].Rows)
            {
                int productId = int.Parse(pr["ProductId"].ToString());
                string name = pr["Name"].ToString();
                double cost = double.Parse(pr["Cost"].ToString());
                double listPrice = double.Parse(pr["ListPrice"].ToString());
                int stock = int.Parse(pr["Stock"].ToString());

                Product product = new Product(name, productId, cost, listPrice, stock);
                this.ProductList.Add(product);
            }

        }
    }
}