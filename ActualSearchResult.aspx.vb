Imports System.Data.OleDb
Imports System.Data
Partial Class ActualSearchResult
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim strSearch As String

        strSearch = Request("search")

        Dim connection As OleDbConnection
        Dim adapter As OleDbDataAdapter
        Dim dataset As New DataSet

        Dim connectionstring As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim sql As String = "Select * From Drinks where [Drink_Name] Like '%" & strSearch & "%'"

        connection = New OleDbConnection(connectionstring)
        adapter = New OleDbDataAdapter(sql, connection)

        connection.Open()
        adapter.Fill(dataset)
        GridView1.DataSource = dataset
        GridView1.DataBind()
        connection.Close()

    End Sub
End Class
