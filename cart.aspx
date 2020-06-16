<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cart.aspx.vb" Inherits="cart"
    EnableEventValidation="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%'------------------Step7: Display information and create necessary forms and input objects-----%>
<html>
<head>
    <title>Session Shopping Cart</title>
    <style type="text/css">
        .auto-style2 {
            width: 389px;
            height: 67px;
        }
        .auto-style4 {
            width: 191px;
            height: 158px;
        }
        .auto-style5 {
            height: 41px;
        }
    </style>
</head>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" title="bog standard" />
    <center>
        <h1></h1>
        
                <nav class="auto-style9">
  <div class="auto-style10">
      <div class="topnav-header">
      <div class="auto-style2">
  <a class="active" href="index.aspx">Home |</a>
  <a href="register.aspx">Register |</a>
  <a href="login.aspx">Login |</a>
          <a href="logout.aspx">Logout |</a>
  <a href="cart.aspx">View Cart</a>
          
         

</div>
      <img src="images/logo_cart.png" alt="logo" class="auto-style4" /> <br />

          <font face="Arial" size="3" color="white"><b>Your shopping cart:</b> </font>
           </div>
        <%
            Dim orderTotal As Decimal = 0
        %>
        <form method="get" action="cart.aspx">
            <link href="StyleSheet.css" rel="stylesheet" type="text/css" title="bog standard" />
        <input name="updateQ" type="hidden" value="1">
        <table bgcolor="White" border="1" cellpadding="4" cellspacing="0">
            <tr bgcolor="lightgreen">
                <th bgcolor="Silver">
                    Product
                </th>
                <th bgcolor="Silver">
                    Price
                </th>
                <th bgcolor="Silver">
                    Quantity
                </th>
            </tr>
            <% 
                For intCounter as integer  = 0 To UBound(arrcart, 2)
                    If arrcart(CartID, intCounter) <> "" Then
                        orderTotal = orderTotal + (arrcart(CartPrice, intCounter) * arrcart(CartQuantity, intCounter))
            %>
            <tr>
                <td bgcolor="Silver">
                    <%=arrCart( CartDescription, intCounter)%>
                    &nbsp;
                </td>
                <td bgcolor="Silver">
                    <%=formatCurrency( arrCart(CartPrice, intCounter ) )%>
                    &nbsp;
                </td>
                <td bgcolor="Silver">
                    <input name="pq<%=arrCart(CartID, intCounter )%>" type="text" size="4" value="<%=arrCart(CartQuantity, intCounter )%>" />
                </td>
            </tr>
            <% 
            End If
        Next
            %>
            <tr bgcolor="yellow">
                <td colspan="2" align="right" bgcolor="Silver">
                    <b>Order Total:</b>
                </td>
                <td bgcolor="Silver">
                    <%=formatCurrency( orderTotal )%>
                    &nbsp;
                </td>
                <%' new line in addition to the db_day6
                    Session("OrderTotal") = orderTotal
                %>
                <%
                    '----------------- Step8: Check whether there is no item left in the cart. If not, abandon the session. ------------
                    Dim TotalQuantity As Integer
                    TotalQuantity = 0
                    For intCounter  as integer= 0 To UBound(Session("sesCart"), 2)
                        TotalQuantity = TotalQuantity + Session("sesCart")(3, intCounter)
                    Next
                    If TotalQuantity = 0 Then
                        Session.Abandon()
                    End If

                %>
            </tr>
            <tr>
                <td colspan="3" bgcolor="Silver" class="auto-style5">
                    <table border="0">
                        <tr>
                            <td align="right">
                                <input type="submit" value="Update Cart">
                            </td>
        </form>
        <form method="post" action="checkout.aspx">
        <td>
            <input type="submit" value="Checkout" />
        </td>
        </form>
        <form action="Index.aspx">
        <td>
            <input type="submit" value="Continue Shopping" />
        </td>
        </form>
        <form action="logout.aspx" id="form1" name="form1">
        <td>
            <input type="submit" value="Reset and Start Over" id="submit1" name="submit1" />
        </td>
        </form>
        </tr> </table> </td> </tr> </table>
    </center>
</body>
</html>
