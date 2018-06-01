<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateInventory.aspx.cs" Inherits="InventorySystemWebApplication.UpdateInventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Inventory</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" />
</head>
<body>
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
            </div>-->
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
            <h1>Update Inventory</h1>
        <div>
            <br />
            <h4>&nbsp;Product Information</h4>
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="ProductID" runat="server" Text="Product ID:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ProductIDTextBox" runat="server" Width="369px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="ProductNameLabel" runat="server" Text="Product Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ProductNameTextBox" runat="server" Width="369px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="ProductCostLabel" runat="server" Text="Cost:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ProductCostTextBox" runat="server" Width="369px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="ProductListPriceLabel" runat="server" Text="List Price:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ProductListPriceTextBox" runat="server" Width="369px"></asp:TextBox>
                <br />
    &nbsp;&nbsp;
                <asp:Label ID="ProductStockLabel" runat="server" Text="Stock:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ProductStockTextBox" runat="server" Width="369px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="UpdateButton" runat="server" class="btn btn-primary" Text="Update Inventory" OnClick="UpdateButton_Click" />
                &nbsp;<br />
                <br />
            <asp:GridView ID="UpdateGridView" runat="server" Height="283px" OnRowUpdating="UpdateGridView_RowUpdating" Width="1217px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ButtonField CommandName="Update" Text="Update" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
