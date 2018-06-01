<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCustomers.aspx.cs" Inherits="InventorySystemWebApplication.ViewCustomers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Customer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                    <asp:HyperLink class="dropdown-item" ID="HyperLinks2" runat="server" NavigateUrl="~/InventorySearch.aspx">Search Inventory</asp:HyperLink>
                </div>
            </div>
            <div id="customerdropdown" class="dropdown btn-group">
                <button class="btn btn-primary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Customer Orders
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">           
                    <asp:HyperLink class="dropdown-item" ID="HyperLink7" runat="server" NavigateUrl="~/ViewCustomerOrders.aspx">View Customer Orders</asp:HyperLink>                 
                    <asp:HyperLink class="dropdown-item" ID="HyperLink8" runat="server" NavigateUrl="~/AddCustomers.aspx">Add Customer</asp:HyperLink>
                </div>
            </div>
            
            <div id="vvendorsdropdown" class="dropdown btn-group">
                <button class="btn btn-primary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Vendors
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <asp:HyperLink class="dropdown-item" ID="HyperLink3v" runat="server">Vendor Orders</asp:HyperLink>
                    <asp:HyperLink class="dropdown-item" ID="HyperLink2v" runat="server" NavigateUrl="~/CurrentInventory.aspx">Vendors</asp:HyperLink>
                </div>
            </div>
            
            </div>
            <br />
            <h1>Add Customer</h1>
            <p>&nbsp;</p>
            &nbsp;&nbsp;
            <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="NameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;
            <asp:Label ID="AddressLabel" runat="server" Text="Address"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address Required" ControlToValidate="AddressTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="AddCustomerButton" class="btn btn-primary" runat="server" Text="Add Customer" CausesValidation="False" OnClick="AddCustomerButton_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="802px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
