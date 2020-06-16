<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewOrders.aspx.vb" Inherits="ViewOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 130px;
            height: 115px;
        }
        .auto-style2 {
            text-align: left;
            width: 1460px;
        }
        .auto-style3 {
            text-align: right;
            width: 1363px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
             <link href="css/bootstrap.css" rel="stylesheet" type="text/css" title="bog standard" />
        <div>
                    <nav class="auto-style9">
                        <div class="auto-style10">
                            <div class="topnav-header">
                                <div class="auto-style2">
                                    <div class="text-left">
                                        <a class="active" href="index.aspx">Home |</a>
  <a href="register.aspx">Register |</a>
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  <a href="cart.aspx">View Cart</a>
          
                                    </div>
          
          <div class="auto-style3"> Account Info <br /><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/User.png" Width="32px" Height="29px" /></div>

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style1" />
           </div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
                            <asp:Label ID="lblSorry" runat="server" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
