<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Change.aspx.vb" Inherits="Change" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 242px;
        }
        .auto-style4 {
            width: 135px;
            height: 147px;
        }
        .auto-style6 {
            width: 1007px;
            text-align: right;
            height: 51px;
        }
        .auto-style7 {
            width: 311px;
            height: 34px;
        }
    </style>
</head>
<body>
         <link href="css/bootstrap.css" rel="stylesheet" type="text/css" title="bog standard" />
    <form id="form1" runat="server">
                <nav class="auto-style9">
  <div class="auto-style10">
      <div class="topnav-header">
      <div class="auto-style7">
  <a class="active" href="index.aspx">Home |</a>
  <a href="register.aspx">Register |</a>
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  <a href="cart.aspx">View Cart</a>
          
          <div class="auto-style6"> Account Info <br /><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/User.png" Width="32px" Height="29px" /></div>

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style4" /></div>
        <div>
             <%--<asp:Button ID="Button1" runat="server" Text="Button" />--%>
        </div>
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            Please enter the information CORRECTLY as followed:</p>
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">Current Password:</td>
                    <td>
                        <asp:TextBox ID="txtCurrent" runat="server" TextMode="Password" Width="211px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">New Password:</td>
                    <td>
                        <asp:TextBox ID="txtNew" runat="server" TextMode="Password" Width="211px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm New Password:</td>
                    <td>
                        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="211px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="btn btn-dark" Width="114px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblSuccess" runat="server" ForeColor="Lime" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="lblFail" runat="server" ForeColor="#990000" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
