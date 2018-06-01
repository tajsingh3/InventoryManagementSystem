<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InventorySearch.aspx.cs" Inherits="InventorySystemWebApplication.InventorySearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventory Search</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" />
</head>
<body>
    <div class="container-fluid">   
        <form id="form1" runat="server">
            <!--<br />
            <div id="nav">
            <div class="btn-group">
                <asp:Button ID="HomeButton" class="btn btn-primary" runat="server" Text="Home" />
            </div>
            <div class="btn-group">
                <asp:Button ID="CustomerOrdersButton" class="btn btn-primary" runat="server" Text="Customer Orders" />
            </div>
            <div id="vendorsdropdown" class="dropdown btn-group">
                <button class="btn btn-primary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Vendors
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <asp:HyperLink class="dropdown-item" ID="HyperLink3" runat="server">Vendor Orders</asp:HyperLink>
                    <asp:HyperLink class="dropdown-item" ID="HyperLink2" runat="server" NavigateUrl="~/CurrentInventory.aspx">Vendors</asp:HyperLink>
                </div>
            </div>
            </div>
            <br />-->
            <br />
            <div id="nav">
            <div class="btn-group">
                <asp:Button ID="HomeButto" class="btn btn-primary" runat="server" Text="Home" OnClick="HomeButto_Click" />
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
                     <asp:HyperLink class="dropdown-item" ID="HyperLink22" runat="server" NavigateUrl="~/InventoryByStockLevel.aspx">Stock Level Query</asp:HyperLink>
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
            <div>
                <h1>Inventory Search</h1> 
                <br />
                <asp:Label ID="ProductNameSearchLabel" runat="server" Text="Product Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ProductNameSearchTextBox" runat="server" Width="376px" ></asp:TextBox>               
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ProductNameSearchButton" runat="server" Text="Search" class="btn btn-primary" OnClick="ProductNameSearchButton_Click" CausesValidation="false"/>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="ProductNameSearchRequiredFieldValidator" runat="server" ErrorMessage="Product Name is required" ControlToValidate="ProductNameSearchTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <h4>Product Information</h4>
                <br />
                <asp:Label ID="ProductID" runat="server" Text="Product ID:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ProductIDTextBox" runat="server" Width="369px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="ProductNameLabel" runat="server" Text="Product Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ProductNameTextBox" runat="server" Width="369px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="ProductCostLabel" runat="server" Text="Cost:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ProductCostTextBox" runat="server" Width="369px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="ProductListPriceLabel" runat="server" Text="List Price:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ProductListPriceTextBox" runat="server" Width="369px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="ProductStockLabel" runat="server" Text="Stock:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ProductStockTextBox" runat="server" Width="369px"></asp:TextBox>                                                    
            </div>                  
        </form>
    </div>
</body>
</html>
