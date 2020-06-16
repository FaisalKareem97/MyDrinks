
Partial Class cart
    Inherits System.Web.UI.Page

    Public arrCart(,)


    Public Const CartID = 0
    Public Const CartPrice = 1
    Public Const CartDescription = 2
    Public Const CartQuantity = 3



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        '----------------Section1: Declare necessary variables -----------------
        Dim ProductID, Price, Description As String
        Dim intCounter As Integer
        Dim cartsize As Integer



        '----------------Section2: Get Product Information-----------------

        ProductID = Request.QueryString("ProductID")
        Price = Request.QueryString("Price")
        Description = Request.QueryString("Description")

        '-------------------Section 3: Get the shopping Cart--------------------
        'You have to find out whether this is already a cart (session cart) in use. 
        'If not, create a new one as a local array.

        If Not IsArray(Session("sesCart")) Then


            Dim intBeginningSize As Integer = 0
            ReDim Preserve arrCart(3, intBeginningSize)

        Else
            arrCart = Session("sesCart")

        End If


        '------------------Section 4: Add Item to Cart----------------------------

        If ProductID <> "" Then
            Dim foundIT As Boolean = False
            '----------------Check whether the product is already in the cart. If so, do not add a new column.
            '---------------If the product already exists in the cart, add one more item for that product. 
            For intCounter = 0 To UBound(arrCart, 2)
                If arrCart(CartID, intCounter) = ProductID Then
                    arrCart(CartQuantity, intCounter) = arrCart(CartQuantity, intCounter) + 1
                    foundIT = True
                    Exit For
                End If
            Next
            '-------------- If the product does not exist in the cart, create a new column and then add new product information.  --------------------
            If Not foundIT Then
                'Check whether the cart is empty. If not, add one more column.
                If arrCart(CartID, cartsize) <> "" Then
                    cartsize = UBound(arrCart, 2) + 1
                End If
                ReDim Preserve arrCart(3, cartsize)
                arrCart(CartID, cartsize) = ProductID
                arrCart(CartPrice, cartsize) = Price
                arrCart(CartDescription, cartsize) = Description
                arrCart(CartQuantity, cartsize) = 1
            End If

        End If

        '---------------Step5:Update Shopping Cart Quantities------------------
        'This step will be execute only when users what to change quantity of the product in their shopping cart. --------
        cartsize = UBound(arrCart, 2)
        If Request.QueryString("updateQ") <> "" Then
            For intCounter = 0 To UBound(arrCart, 2)
                arrCart(CartQuantity, intCounter) = Trim(Request.QueryString("pq" & arrCart(CartID, intCounter)))
            Next
            '----------Check whether quantity = 0 --------------------------------
            ' Pay attention to this one
            'This is the step where you have to change the array information, if user want to delete a product from their cart.
            Dim deleteItem As Integer = 0
            For intCounter = 0 To UBound(arrCart, 2)
                If arrCart(CartQuantity, intCounter) = 0 Then
                    deleteItem = deleteItem + 1
                    For intCounter2 As Integer = intCounter To UBound(arrCart, 2) - 1
                        arrCart(CartID, intCounter2) = arrCart(CartID, intCounter2 + 1)
                        arrCart(CartPrice, intCounter2) = arrCart(CartPrice, intCounter2 + 1)
                        arrCart(CartDescription, intCounter2) = arrCart(CartDescription, intCounter2 + 1)
                        arrCart(CartQuantity, intCounter2) = arrCart(CartQuantity, intCounter2 + 1)
                    Next
                End If
            Next
            ReDim Preserve arrCart(3, cartsize - deleteItem)
        End If



        '--------------------Step6: Update Session Array-----------------------------------
        Session("sesCart") = arrCart

    End Sub
End Class
