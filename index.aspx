<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

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
            height: 29px;
            width: 294px;
            text-align: right;
        }
        .auto-style3 {
            height: 108px;
            width: 155px;
        }
        .auto-style4 {
            height: 98px;
            width: 136px;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style7 {
            width: 482px;
            text-align: center;
        }
        .auto-style8 {
            position: relative;
            width: 38%;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            left: 1115px;
            top: 1px;
            padding-left: 15px;
            padding-right: 15px;
            text-align: right;
            height: 20px;
        }
        .auto-style9 {
            left: 0px;
            top: 0px;
            width: 1447px;
            height: 127px;
        }
        .auto-style10 {
            width: 88%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
        .auto-style20 {
            height: 96px;
        }
        .auto-style21 {
            width: 482px;
            text-align: center;
            height: 96px;
        }
        .auto-style22 {
            height: 41px;
        }
        .auto-style23 {
            width: 482px;
            text-align: center;
            height: 41px;
        }
        .auto-style24 {
            width: 100%;
            height: 201px;
        }
        .auto-style25 {
            height: 28px;
        }
        .auto-style26 {
            width: 482px;
            text-align: center;
            height: 28px;
        }
        .auto-style27 {
            width: 301px;
            height: 268px;
        }
        .auto-style28 {
            width: 491px;
        }
        .auto-style29 {
            height: 96px;
            width: 491px;
        }
        .auto-style30 {
            height: 28px;
            width: 491px;
        }
        .auto-style31 {
            height: 41px;
            width: 491px;
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
          
          <div class="auto-style8"> Account Info <br /><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/User.png" Width="32px" Height="29px" /></div>

</div>
      <img src="images/logo_drink.png" alt="logo" class="auto-style4" />
           <a class="auto-style3" href="#"><span class="auto-style5">My Drinks</span></a>
    </div>
<%--    <div class="navbar-header">
<img src="images/logo_drink.png" alt="logo"
      <a class="auto-style1" href="#">My Drinks</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.aspx">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>--%>
</nav>

    

        <table class="auto-style24">
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style7">
                    Welcome!
                        <font color="blue"><%=Session("sesUser")%>  
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="logout.aspx">Log Out</asp:HyperLink></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style21">
                    <img alt="" class="auto-style27" src="images/logo_welcome.png" /></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style30">Search for your favorite drinks!</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style25">Search by Drink Category!</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="search" CssClass="btn btn-dark" />
                </td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style22">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1" DataTextField="Category" DataValueField="Category">
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/app_data/Drinks.mdb" SelectCommand="SELECT DISTINCT [Category] FROM [Drinks]"></asp:AccessDataSource>
                    <asp:Button ID="Button1" runat="server" Text="search" CssClass="btn btn-dark" />
                </td>
            </tr>
            </table>
        </form>

</body>
</html>
