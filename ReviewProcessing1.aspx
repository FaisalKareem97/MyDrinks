<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ReviewProcessing1.aspx.vb" Inherits="ReviewProcessing1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 276px;
        }
        .auto-style2 {
            width: 165px;
            height: 74px;
        }
        .auto-style3 {
            width: 276px;
            height: 74px;
        }
        .auto-style4 {
            height: 82px;
        }
        .auto-style5 {
            width: 276px;
            height: 42px;
        }
        .auto-style6 {
            width: 165px;
            height: 42px;
        }
        .auto-style7 {
            height: 42px;
        }
        .auto-style8 {
            width: 276px;
            height: 73px;
        }
        .auto-style9 {
            width: 165px;
            height: 73px;
        }
        .auto-style10 {
            width: 276px;
            height: 72px;
        }
        .auto-style11 {
            width: 276px;
            height: 82px;
        }
        .auto-style12 {
            width: 165px;
            height: 82px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" title="bog standard" />
        <div>
        </div>
                        <nav class="auto-style9">
  <div class="auto-style10">
      <div class="topnav-header">
      <div class="auto-style2">
  <a class="active" href="Employee.aspx">Home |</a>
  
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  
          
          <div class="auto-style8"> &nbsp;<br /></div>

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style2" /></div>
        <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <p>
            Change Status:</p>
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="btnReceived" runat="server" Text="Received" Width="263px" />
                    </td>
                    <td class="auto-style12">
                    </td>
                    <td class="auto-style12">
                        </td>
                    <td class="auto-style11">
                        <asp:Button ID="btnCancelled" runat="server" Text="Cancelled" Width="263px" />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblReceived" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        </td>
                    <td class="auto-style6">
                        </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblCancelled" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
