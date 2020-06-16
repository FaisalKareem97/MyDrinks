<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ChangeUser.aspx.vb" Inherits="ChangeUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 322px;
        }
        .auto-style2 {
            width: 135px;
            height: 151px;
        }
        .auto-style3 {
            width: 562px;
            height: 28px;
        }
    </style>
</head>
<body>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" title="bog standard" />
    <h1>Change User Name!

    </h1>
   
 
    <form id="form1" runat="server">
 
                <nav class="auto-style9">
  <div class="auto-style10">
      <div class="topnav-header">
      <div class="auto-style3">
  <a class="active" href="index.aspx">Home |</a>
  <a href="register.aspx">Register |</a>
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  <a href="cart.aspx">View Cart</a>
          
          

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style2" />
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Please enter your new username:</td>
                    <td>
                        <asp:TextBox ID="txtCurrent" runat="server" Width="234px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Save Changes" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
