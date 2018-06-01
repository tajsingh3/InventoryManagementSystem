using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.SessionState;

namespace InventorySystemWebApplication
{
    public class Global : System.Web.HttpApplication
    {
        public static string connectionString;

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            connectionString= WebConfigurationManager.AppSettings["InventoryConnStr"];
            string conn = WebConfigurationManager.AppSettings["InventoryConnStr"];
            Inventory inventory = new Inventory();
            inventory.Load();

            Session["inventory"] = inventory;

            CustomerSystem cs = new CustomerSystem();
            cs.Load();

            Session["customersystem"] = cs;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}