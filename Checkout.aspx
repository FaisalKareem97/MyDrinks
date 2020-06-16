<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Checkout.aspx.vb" Inherits="Checkout" EnableSessionState="True" EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 425px;
            height: 187px;
        }
        .auto-style2 {
            width: 497px;
        }
        .auto-style4 {
            width: 167px;
            height: 114px;
        }
        .auto-style5 {
            text-align: right;
            width: 995px;
            height: 30px;
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
  <a class="active" href="index.aspx">Home |</a>
  <a href="register.aspx">Register |</a>
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  <a href="cart.aspx">View Cart</a>
          
          <div class="auto-style5"> Account Info <br /><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/User.png" Width="33px" Height="29px" /></div>

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style4" />
           </div>
            <h1>Your order has been complete!</h1>
            <p>you can go to your orders to check it out!</p>
            
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <img alt="" class="auto-style1" src="images/logo_cart.png" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </p>
        </div>
    </form>
</body>
</html>
