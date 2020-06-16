<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ActualSearchResult.aspx.vb" Inherits="ActualSearchResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
   <link href="css/bootstrap.css" rel="stylesheet" />
    <style>
         body{background-image: url("/images/background.png");
        }
        .auto-style1 {
            width: 112px;
            height: 96px;
        }
    </style> 
       

</head>
    
<body>
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
          
          <div class="text-right"> Account Info <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/User.png" Width="35px" /></div>

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style1" /></div>
        <div>
           <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                    <asp:BoundField DataField="Drink_Name" HeaderText="Drink_Name" />
                    <asp:BoundField DataField="Location" HeaderText="Location" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="Product_ID,Drink_Name,Location,Price" DataNavigateUrlFormatString="cart.aspx?ProductId={0}&amp;Description={1}&amp;Category={2}&amp;Price={3}" NavigateUrl="http://localhost:59988/Cart.aspx" Text="AddToCart" />
                </Columns>
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
