Imports System.Data
Imports System.Data.OleDb
Partial Class ViewOrders
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim connection As OleDbConnection
        Dim adapter As OleDbDataAdapter
        Dim dataset As New DataSet

        Dim intNum As Integer

        intNum = Session("sesCustomer")


        Dim connectionstring As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim sql As String = "Select * From Orders Where Costumer_ID=" & intNum
        connection = New OleDbConnection(connectionstring)
        adapter = New OleDbDataAdapter(sql, connection)
        connection.Open()
        adapter.Fill(dataset)
        If dataset.Tables(0).Rows.Count < 1 Then
            lblSorry.Text = "You haven't ordered yet!"
            lblSorry.Visible = True
        End If
        GridView1.DataSource = dataset
        GridView1.DataBind()
        connection.Close()





    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Account.aspx")
    End Sub
End Class
