<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="InventorySystemWebApplication.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventory Management System</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" />
</head>
<body>
    <div class="container-fluid">
        <form id="form1" runat="server">
        <div>
            <br />
            <div id="nav">
            <div class="btn-group">
                <asp:Button ID="HomeButto" class="btn btn-primary" runat="server" Text="Home" />
            </div>
            <div id="inventorydropdown" class="dropdown btn-group">
                <button class="btn btn-primary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Inventory
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">           
                    <asp:HyperLink class="dropdown-item" ID="HyperLink4" runat="server" NavigateUrl="~/CurrentInventory.aspx">Current Inventory</asp:HyperLink>
                    <asp:HyperLink class="dropdown-item" ID="HyperLink1" runat="server" NavigateUrl="~/AddInventory.aspx">Add Inventory</asp:HyperLink>
                    <asp:HyperLink class="dropdown-item" ID="HyperLink5" runat="server" NavigateUrl="~/RemoveInventory.aspx">Remove Inventory</asp:HyperLink>
                    <asp:HyperLink class="dropdown-item" ID="HyperLink6" runat="server" NavigateUrl="~/UpdateInventory.aspx">Update Inventory</asp:HyperLink>
                    <asp:HyperLink class="dropdown-item" ID="HyperLinks2" runat="server" NavigateUrl="~/InventorySearch.aspx">Search Inventory</asp:HyperLink>
                    <asp:HyperLink class="dropdown-item" ID="HyperLink2" runat="server" NavigateUrl="~/InventoryByStockLevel.aspx">Stock Level Query</asp:HyperLink>
                </div>
            </div>
            <div id="customerdropdown" class="dropdown btn-group">
                <button class="btn btn-primary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Customer Orders
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">           
                    <asp:HyperLink class="dropdown-item" ID="HyperLink7" runat="server" NavigateUrl="~/ViewCustomerOrders.aspx">View Customer Orders</asp:HyperLink>                 
                    <!--<asp:HyperLink class="dropdown-item" ID="HyperLink8" runat="server" NavigateUrl="~/AddCustomers.aspx">Add Customer</asp:HyperLink>-->
                </div>
            </div>
            
            <div id="vvendorsdropdown" class="dropdown btn-group">
                <button class="btn btn-primary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Vendors
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <!--<asp:HyperLink class="dropdown-item" ID="HyperLink3v" runat="server">Vendor Orders</asp:HyperLink>
                    <asp:HyperLink class="dropdown-item" ID="HyperLink2v" runat="server" NavigateUrl="~/CurrentInventory.aspx">Vendors</asp:HyperLink>-->
                </div>
            </div>
            
            </div>
            <br />

            <div class="jumbotron">
  <h1 class="display-4">Inventory Management System</h1>
  <p class="lead">This is a generic inventory management system.</p>
  <hr class="my-4">
  
  <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
</div>
        </div>
    </form>
        <div class="row">
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Inventory</h5>
        <p class="card-text">Manage Inventory.</p>
        <a href="#" class="btn btn-primary">View Inventory</a>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Customers</h5>
        <p class="card-text">Manage Customers Orders.</p>
        <a href="#" class="btn btn-primary">View Customers</a>
      </div>
    </div>
  </div>
<div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Vendors</h5>
        <p class="card-text">Manage Vendors.</p>
        <a href="#" class="btn btn-primary">View Vendors</a>
      </div>
    </div>
  </div>
</div>
    </div> 
</body>
</html>
