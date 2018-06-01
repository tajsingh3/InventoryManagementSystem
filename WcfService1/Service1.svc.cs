using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using InventorySystemWebApplication;

namespace WcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }

        public List<Product> GetProducts(int stockLevel)
        {
            List<Product> prList = new List<Product>();

            string connStr = Global.connectionString;
            DataSet ds = new DataSet();

            using (SqlConnection myConn = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM product", myConn);
                da.Fill(ds, "products");
            }

            foreach (DataRow pr in ds.Tables["products"].Rows)
            {
                int stock = int.Parse(pr["Stock"].ToString());

                if (stock <= stockLevel)
                {
                    int productId = int.Parse(pr["ProductId"].ToString());
                    string name = pr["Name"].ToString();
                    double cost = double.Parse(pr["Cost"].ToString());
                    double listPrice = double.Parse(pr["ListPrice"].ToString());
                    Product product = new Product(name, productId, cost, listPrice, stock);
                    prList.Add(product);
                }
            }

            return prList;
        }
    }
}
