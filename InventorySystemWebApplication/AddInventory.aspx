<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddInventory.aspx.cs" Inherits="InventorySystemWebApplication.AddInventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Inventory</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" />
</head>
<body>
    <div class="container-fluid">   
        <form id="form1" runat="server">
           <!-- <br />
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
                <h1>Add Product to Inventory</h1><h4>Product Information</h4>              
                <br />
                <asp:Label ID="ProductNameLabel" runat="server" Text="Product Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ProductNameTextBox" runat="server" Width="369px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorProductNameTextBox" runat="server" ErrorMessage="Product Name is Required" ControlToValidate="ProductNameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="ProductNameTextBoxCompareValidator" runat="server" ErrorMessage="Name must have letters" ControlToValidate="ProductNameTextBox" Operator="DataTypeCheck" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
                <asp:Label ID="ProductCostLabel" runat="server" Text="Cost:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ProductCostTextBox" runat="server" Width="369px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ProductCostTextBoxRequiredFieldValidator" runat="server" ErrorMessage="Cost is required" ControlToValidate="ProductCostTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="ProductCostTextBoxCompareValidator" runat="server" ErrorMessage="Cost Must be a number" ControlToValidate="ProductCostTextBox" Operator="DataTypeCheck" Type="Double" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
                <asp:Label ID="ProductListPriceLabel" runat="server" Text="List Price:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ProductListPriceTextBox" runat="server" Width="369px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ListPriceRequiredFieldValidator" runat="server" ControlToValidate="ProductListPriceTextBox" ErrorMessage="List Price is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="ListPriceCompareValidator1" runat="server" ControlToValidate="ProductListPriceTextBox" ErrorMessage="List Price must be a number" ForeColor="Red" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
                <br />
                <br />
                <asp:Label ID="ProductStockLabel" runat="server" Text="Stock:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ProductStockTextBox" runat="server" Width="369px"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="StockRequiredFieldValidator1" runat="server" ControlToValidate="ProductStockTextBox" ErrorMessage="Stock is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ProductStockTextBox" ErrorMessage="Stock must be a whole number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:Button ID="AddProductButton" runat="server" Text="Add Product" class="btn btn-primary" OnClick="AddProductButton_Click" CausesValidation="false"/>
            &nbsp;
                <asp:Label ID="StatusLabel" runat="server" ForeColor="#00CC00"></asp:Label>
            </div>                  
        </form>
    </div>
</body>
</html>
