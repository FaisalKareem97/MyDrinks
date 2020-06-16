<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Account.aspx.vb" Inherits="Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
           body {
            background-image: url("/images/background.png");
        }
		
        .auto-style2 {
            width: 307px;
        }
        .auto-style3 {
            width: 383px;
        }
        .auto-style4 {
            width: 152px;
            height: 131px;
        }
        .auto-style5 {
            margin-left: 1272px;
            width: 120px;
            height: 2px;
        }
        .auto-style7 {
            width: 77%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          
    <p>
         <nav class="auto-style9">
  <div class="auto-style10">
      <div class="topnav-header">
      <div class="auto-style2">
  <a class="active" href="index.aspx">Home |</a>
  <a href="register.aspx">Register |</a>
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  <a href="cart.aspx">View Cart</a>
          
          <div class="auto-style5"> Account Info <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/User.png" Width="35px" /></div>

          </div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style4" />
           <br />
    </div>
      <br />
      <br />
      <br />

        Account Name: <%=Session("sesUser") %>
    </p>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" title="bog standard" />
    
         <table style="width:100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Check my order" Width="269px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Text="Change password" Width="269px" />
                    </td>
                    <td class="auto-style3">
&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnChangeUser" runat="server" Text="Change user-name" Width="269px" />
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnChangeEmail" runat="server" Text="Change Email Address" Width="269px" />
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                      
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
