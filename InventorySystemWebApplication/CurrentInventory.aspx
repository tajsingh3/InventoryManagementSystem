<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrentInventory.aspx.cs" Inherits="InventorySystemWebApplication.CurrentInventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventory</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" />
</head>
<body>
    <div class="container-fluid">
    <form id="form1" runat="server">        
       <!-- <div id="nav">
           <div id="nav">
            <asp:Button ID="HomeButton" class="btn btn-primary" runat="server" Text="Home" />
            <asp:Button ID="CustomerOrdersButton" class="btn btn-primary" runat="server" Text="Customer Orders" />
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
                     <asp:HyperLink class="dropdown-item" ID="HyperLink9" runat="server" NavigateUrl="~/InventoryByStockLevel.aspx">Stock Level Query</asp:HyperLink>
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
            
            <div id="vendorsdropdown" class="dropdown btn-group">
                <button class="btn btn-primary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Vendors
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <!--<asp:HyperLink class="dropdown-item" ID="HyperLink3" runat="server">Vendor Orders</asp:HyperLink>
                    <asp:HyperLink class="dropdown-item" ID="HyperLink2" runat="server" NavigateUrl="~/CurrentInventory.aspx">Vendors</asp:HyperLink>-->
                </div>
            </div>
            
            </div>
            <br />
        
            <br />
       <br />
       <br />
       <h1>Inventory</h1>            
       <br />
        <div style="height: 707px">         
            <asp:Panel ID="Panel1" runat="server" Height="882px" style="margin-right: 1070px" Width="1345px" >
                <asp:Panel ID="Panel2" runat="server"  CssClass="panels" Width="451px" Height="620px" class="border border-primary">
                    <h4>Product Information</h4>                      
                    <h4>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ProductId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="269px" Width="346px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
                                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDataConnectionString %>" SelectCommand="SELECT [ProductId], [Name], [Cost], [ListPrice], [Stock] FROM [Product] WHERE ([ProductId] = @ProductId)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="ProductId" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </h4>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server"  CssClass="panels" Width="883px" Height="616px">
                    <h4 id="inventoryDetails">Inventory Details</h4>  
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="783px" DataKeyNames="ProductId" AllowSorting="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
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
                    &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDataConnectionString %>" SelectCommand="SELECT [ProductId], [Name], [Stock] FROM [Product]"></asp:SqlDataSource>
                    &nbsp;<br /><!--</div>--><!--</div>-->
                    <!--</div>-->
                <!--</asp:Panel>
                <asp:Button ID="ReportButton"  class="btn btn-primary" runat="server" Text="Report" />
                <asp:Button ID="AddProductButton"  class="btn btn-primary" runat="server" Text="Add Product" />
                <asp:Button ID="DeleteProductButton"  class="btn btn-primary" runat="server" Text="Delete Product" />
                <asp:Button ID="LowStockItemsButton" class="btn btn-primary" runat="server" Text="Low Stock Items" />
            </asp:Panel>-->
        </div>
    </form>
        
</div>
</body>
</html>
