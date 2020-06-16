<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ReviewAll.aspx.vb" Inherits="ReviewAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         body {
            background-image: url("/images/background.png");
        }
        .auto-style1 {
            height: 31px;
        }
        .auto-style2 {
            height: 31px;
            width: 358px;
        }
        .auto-style3 {
            width: 358px;
        }
        .auto-style6 {
            width: 106px;
            height: 118px;
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
  <a class="active" href="Employee.aspx">Home |</a>
  
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  
          
          <div class="auto-style8"> &nbsp;<br /></div>

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style6" /></div>
        <div>
            <h1>Reviewing all orders</h1>
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Choose an Order ID to review:</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Go" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
