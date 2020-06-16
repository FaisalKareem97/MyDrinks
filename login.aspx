<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">  
        .auto-style1 {
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
            height: 54px;
        }
        .auto-style2 {
            height: 26px;
            width: 286px;
        }
        .auto-style3 {
            height: 26px;
            text-align: right;
        }
        .auto-style5 {
            height: 114px;
            width: 729px;
        }
        body {
            background-image: url("/images/background.png");
        }
        .auto-style6 {
            width: 229px;
            height: 127px;
        }
        .auto-style7 {
            text-align: left;
            width: 286px;
        }
        .auto-style9 {
            text-align: left;
            width: 137px;
        }
        .auto-style11 {
            height: 26px;
            width: 137px;
        }
        .auto-style12 {
            height: 26px;
            width: 286px;
            text-align: left;
        }
        .auto-style13 {
            height: 17px;
        }
        .auto-style14 {
            height: 17px;
            width: 286px;
        }
        .auto-style15 {
            height: 17px;
            width: 137px;
        }
        .auto-style16 {
            height: 19px;
            text-align: right;
        }
        .auto-style17 {
            height: 19px;
            width: 286px;
        }
        .auto-style18 {
            height: 19px;
            width: 137px;
        }
        .auto-style19 {
            height: 82px;
            text-align: right;
        }
        .auto-style20 {
            height: 82px;
            width: 286px;
        }
        </style>
</head>
<body>
  
    <form id="form1" runat="server">
              <div class="auto-style2">
  <a class="active" href="index.aspx">Home |</a>
  <a href="register.aspx">Register |</a>
  <a href="login.aspx">Login</a>
  
</div>
        
<div class="auto-style1">
    <div class="text-center" style ="border:0px solid #0094ff;">
         <img src="images/logo_welcome.png" alt="logo" class="auto-style6" />
        <h1 class="text-center"> <strong>Welcome to My Drinks !</strong></h1> 
    </div>
   <br />
    <br />
  

       <div class="container-fluid">
           <table class="auto-style5" align="center">
  
  <tbody>
    <tr>
      <td class="text-left">
          &nbsp;</td>
      <td class="auto-style7"><strong><em>Please Enter Your Login Credentials</em></strong></td>
      <td class="auto-style9">
          <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
      <td class="auto-style13"></td>
      <td class="auto-style14"></td>
      <td class="auto-style15">
          <asp:Label ID="lblEmail" runat="server" Text="Uh oh! We can help, please enter your email" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
      <td class="auto-style16">Username:&nbsp;&nbsp;&nbsp; </td>
      <td class="auto-style17">
          <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </td>
      <td class="auto-style18">
          <asp:TextBox ID="txtEmail" runat="server" Visible="False" Width="204px"></asp:TextBox>
          </td>
    </tr>
    <tr>
      <td class="auto-style3">Password:&nbsp;&nbsp;&nbsp;&nbsp; </td>
      <td class="auto-style12">
          <asp:TextBox ID="txtpassword" textmode= "Password" runat="server" Height="25px" BorderStyle="Outset"></asp:TextBox>
          <asp:Button ID="btnShow" runat="server" Height="32px" Text="Show" CssClass="btn btn-dark" Width="61px" />
          <asp:Button ID="btnHide" runat="server" Height="28px" Text="Hide" CssClass="btn btn-dark" Width="61px" Visible="False" />
          <asp:Label ID="Label1" runat="server" ForeColor="Black" Visible="False"></asp:Label>
        </td>
      <td class="auto-style11">
          &nbsp;</td>
    </tr>
    <tr>
      <td class="auto-style19"></td>
      <td class="auto-style20">
          <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-dark" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label5" runat="server" style="font-size: medium" Text="You have" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" style="font-size: medium" Visible="False">5</asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" style="font-size: medium" Text="attempts left" Visible="False"></asp:Label>
        </td>
      <td class="auto-style19">
          <asp:Label ID="lblSecurity" runat="server" Text="Security Questions:" Visible="False"></asp:Label>
          <br />
          <asp:Label ID="lblQuestion" runat="server" Font-Size="Large" ForeColor="Maroon" Text="What is the name of your first pet?" Visible="False"></asp:Label>
          <br />
          <asp:TextBox ID="txtQuestion" runat="server" Visible="False" Width="201px"></asp:TextBox>

        </td>
    </tr>
    <tr>
      <td class="auto-style3">&nbsp;</td>
      <td class="auto-style2">
          <asp:Button ID="Button1" runat="server" Text="Register here!" CssClass="btn btn-dark" />
        </td>
      <td class="auto-style11">
          <asp:Button ID="btnEmail" runat="server" Text="Send Email" CssClass="btn btn-dark" Visible="False" />
        </td>
    </tr>
    <tr>
      <td class="auto-style3">&nbsp;</td>
      <td class="auto-style2">
          &nbsp;</td>
      <td class="auto-style11">
          &nbsp;</td>
    </tr>
  </tbody>

       </div>   

</div>
    </form>
              </nav>

    </body>
</html>
