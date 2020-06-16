<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css.boostrap/css" rel="stylesheet" type="text/css" title="bog standard" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 193px;
        }
        body {
            background-image: url("/images/background.png");
        }
        .auto-style2 {
            width: 193px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 234px;
        }
        .auto-style5 {
            height: 26px;
            width: 234px;
        }
        .auto-style6 {
            width: 132px;
            height: 117px;
        }
        .auto-style7 {
            text-align: right;
            width: 1163px;
        }
        .auto-style8 {
            width: 516%;
        }
        .auto-style9 {
            width: 1182px;
        }
        .auto-style10 {
            width: 193px;
            height: 48px;
        }
        .auto-style11 {
            width: 272px;
            height: 29px;
        }
        .auto-style12 {
            width: 332px;
            height: 52px;
        }
        .auto-style13 {
            width: 420px;
        }
        .auto-style14 {
            width: 429px;
        }
        .auto-style15 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style9">
         <nav class="auto-style9">
  <div class="auto-style10">
      <div class="topnav-header">
      <div class="auto-style11">
  <a class="active" href="index.aspx">Home |</a>
  <a href="register.aspx">Register |</a>
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  <a href="cart.aspx">View Cart</a>
          
          <div class="auto-style7"> Account Info <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/User.png" Width="35px" /></div>

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style6" /></div>
        <div>
            <h1 class="auto-style12">Welcome to my drinks!</h1>
            <h2 class="auto-style13">There are tons of benefits to joining our loveley community to quench our thirsts together!</h2>
            </div>
    <p class="auto-style14">
        By registering, you&#39;re able to order, track or just browse online on our website, and you can even get bonus awards and discounts!</p>
        <table class="auto-style8">
            <tr>
                <td class="auto-style1">Please enter the fields below</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Error! Confirm password does not match" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Error! Please enter a valid email adress!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">First Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">Security Question:</td>
            </tr>
            <tr>
                <td class="auto-style1">Last Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">What is the name of your first pet?</td>
            </tr>
            <tr>
                <td class="auto-style1">Address:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtAdress" runat="server" Width="204px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtAnswes" runat="server" Width="193px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone number:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPhone" runat="server" Width="202px"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">User Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Confirm Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Email Address:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEmail" runat="server" Width="197px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">City</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCity" runat="server" Width="117px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">State</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>Already a member? Log in here!&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td aria-autocomplete="none">
        <asp:Button ID="btnLogIn" runat="server" BackColor="#F00D0D" BorderColor="#F00D0D" Font-Size="Large" Height="27px" Text="Log in" Width="147px" />
                </td>
            </tr>
        </table>
        <asp:Button ID="btnRegister" runat="server" BackColor="#F00D0D" BorderColor="#F00D0D" Font-Size="Large" Height="46px" Text="Register!" Width="185px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    </form>
    </body>
</html>
