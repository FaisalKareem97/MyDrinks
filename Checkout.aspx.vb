Imports System.Data
Imports System.Data.OleDb
Partial Class Checkout
    Inherits System.Web.UI.Page
    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim arrcart(,) As Object = Session("sesCart")
        Dim conn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("app_data/Drinks.mdb"))
        Dim cmdOrders As New OleDbCommand
        cmdOrders.CommandText = "Insert into Orders ([Costumer_ID],[Total_Cost],[Status],[ODate]) values (@ID,@Cost,@Status,@Date)"
        cmdOrders.Connection = conn
        cmdOrders.Parameters.AddWithValue("@ID", Session("sesCustomer"))
        cmdOrders.Parameters.AddWithValue("@Cost", Session("OrderTotal"))
        cmdOrders.Parameters.AddWithValue("@Status", "Processing")
        cmdOrders.Parameters.AddWithValue("@Date", Date.Now.ToString("MM/dd/yyyy"))
        conn.Open()
        cmdOrders.ExecuteNonQuery()
        Dim cmdDetails As OleDbCommand
        Dim cmdID As OleDbCommand
        Dim sql As String = "Insert into Details ([Order_ID],[Product_ID],[Quantity],[Store_ID]) values (@Order,@Drink,@Quantity,@Store)"
        Dim sql2 As String = "select @@Identity"
        cmdID = New OleDbCommand(sql2, conn)
        Dim ID As Integer
        ID = cmdID.ExecuteScalar()

        For counter As Integer = 0 To UBound(arrcart, 2)
            cmdDetails = New OleDbCommand(sql, conn)
            cmdDetails.Parameters.Add("@Order", OleDbType.Integer, 255).Value = ID
            cmdDetails.Parameters.Add("@Drink", OleDbType.Char, 255).Value = arrcart(0, counter)
            cmdDetails.Parameters.Add("@Quantity", OleDbType.Integer, 255).Value = arrcart(3, counter)
            cmdDetails.Parameters.Add("@Store", OleDbType.Integer, 255).Value = 2
            cmdDetails.ExecuteNonQuery()

        Next

    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Account.aspx")
    End Sub
End Class
