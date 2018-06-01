using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace InventorySystemWebApplication
{
    public class CustomerSystem
    {
        private string connStr;
        public DataSet Ds { set; get; }
        public List<Customer> CustomerList { get; set; }
        public List<CustomerOrderLine> CustomerOrderLineList { get; set; }
        public List<CustomerOrder> CustomerOrderList { get; set; }

        public CustomerSystem()
        {
            CustomerList = new List<Customer>();
            CustomerOrderLineList = new List<CustomerOrderLine>();
            CustomerOrderList = new List<CustomerOrder>();
        }

        public void Load()
        {
            connStr = Global.connectionString;
            Ds = new DataSet();

            using (SqlConnection myConn = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM customer", myConn);
                da.Fill(Ds, "customer");

                da = new SqlDataAdapter("SELECT * FROM customerorder", myConn);
                da.Fill(Ds, "customerorder");

                da = new SqlDataAdapter("SELECT * FROM customerorderline", myConn);
                da.Fill(Ds, "customerorderline");
            }

            foreach (DataRow cr in Ds.Tables["customer"].Rows)
            {            
                int customerID = int.Parse(cr["customerid"].ToString());
                string name = cr["name"].ToString();
                string address = cr["address"].ToString();

                Customer customer = new Customer();
                customer.ID = customerID;
                customer.Name = name;
                customer.Address = address;

                this.CustomerList.Add(customer);
            }

            foreach(DataRow col in Ds.Tables["customerorderline"].Rows)
            {
                int productID = int.Parse(col["productid"].ToString());
                int orderID= int.Parse(col["orderid"].ToString());
                int customerID= int.Parse(col["customerid"].ToString());
                int quantity= int.Parse(col["quantity"].ToString());

                CustomerOrderLine customerOrderLine = new CustomerOrderLine();
                customerOrderLine.ProductID = productID;
                customerOrderLine.OrderID = orderID;
                customerOrderLine.CustomerID = customerID;
                customerOrderLine.Quantity = quantity;

                this.CustomerOrderLineList.Add(customerOrderLine);
            }

            foreach (DataRow co in Ds.Tables["customerorder"].Rows)
            {             
                int orderID = int.Parse(co["orderid"].ToString());
                DateTime date = DateTime.Parse(co["date"].ToString());
                double total = double.Parse(co["total"].ToString());

                CustomerOrder customerOrder = new CustomerOrder();
                customerOrder.ID = orderID;
                customerOrder.Date = date;
                customerOrder.Total = total;

                this.CustomerOrderList.Add(customerOrder);
            }

        }
    }
 
}