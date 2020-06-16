Imports System.Data
Imports System.Data.OleDb
Partial Class ReviewProcessing1
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim ID = Session("CheckID1")

        Dim conn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("app_data/Drinks.mdb"))
        Dim ad As New OleDbDataAdapter("Select * From Orders Where Status='Processing' AND Order_ID=" & ID, conn)
        Dim ds As New DataSet
        conn.Open()
        ad.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub

    Private Sub btnReceived_Click(sender As Object, e As EventArgs) Handles btnReceived.Click
        Dim conn As OleDbConnection
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim cmd As New OleDbCommand
        conn = New OleDbConnection(connstr)
        cmd.Connection = conn
        conn.Open()
        cmd.CommandText = "update Orders set [Status]=@status WHERE Order_ID=" & Session("CheckID1")
        cmd.Parameters.AddWithValue("@status", "Receieved")
        cmd.ExecuteNonQuery()
        lblReceived.Visible = True
        lblReceived.Text = "Successfully Received"
        conn.Close()
    End Sub

    Private Sub btnCancelled_Click(sender As Object, e As EventArgs) Handles btnCancelled.Click
        Dim conn As OleDbConnection
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim cmd As New OleDbCommand
        conn = New OleDbConnection(connstr)
        cmd.CommandText = "update Orders set [Status]=@status WHERE Order_ID=" & Session("CheckID1")
        cmd.Connection = conn
        conn.Open()
        cmd.Parameters.AddWithValue("@status", "Cancelled")
        cmd.ExecuteNonQuery()
        lblCancelled.Visible = True
        lblCancelled.Text = "Successfully Cancelled"
        conn.Close()
    End Sub
End Class
