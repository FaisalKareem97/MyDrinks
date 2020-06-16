<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SearchResults.aspx.vb" Inherits="Drinks_Project_SearchResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
         body{background-image: url("/images/background.png");
        }
    
    
        .auto-style2 {
            width: 450px;
            height: 71px;
        }
        .auto-style4 {
            text-align: right;
            width: 1178px;
        }
        .auto-style5 {
            width: 142px;
            height: 112px;
        }
    </style>
</head>
<body>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" title="bog standard" />
    <form id="form1" runat="server">
                <nav class="auto-style9">
  <div class="auto-style10">
      <div class="topnav-header">
      <div class="auto-style2">
  <a class="active" href="index.aspx">Home |</a>
  <a href="register.aspx">Register |</a>
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  <a href="cart.aspx">View Cart</a>
          
          <div class="auto-style4"> Account Info <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/User.png" Width="35px" /></div>

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style5" />
           </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" AutoGenerateColumns="False" CssClass="table-borderles" Height="100px" Width="100px">
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                    <asp:BoundField DataField="Drink_Name" HeaderText="Drink_Name" />
                    <asp:BoundField DataField="Location" HeaderText="Location" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle BorderColor="White" Height="100px" Width="100px" />
                        <HeaderStyle BorderColor="White" />
                        <ItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="Product_ID,Drink_Name,Location,Price" DataNavigateUrlFormatString="cart.aspx?ProductId={0}&amp;Description={1}&amp;Category={2}&amp;Price={3}" NavigateUrl="http://localhost:59988/Cart.aspx" Text="AddToCart" />
                </Columns>
                <EditRowStyle BorderWidth="100px" />
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
