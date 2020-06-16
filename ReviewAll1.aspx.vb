Imports System.Data
Imports System.Data.OleDb
Partial Class ReviewAll1
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim id As Integer = Session("CheckID")
        Dim conn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("app_data/Drinks.mdb"))
        Dim ad As New OleDbDataAdapter("Select * From Details where Order_ID=" & id, conn)
        Dim ds As New DataSet

        conn.Open()
        ad.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        conn.Close()
    End Sub

    Private Sub btnCancelled_Click(sender As Object, e As EventArgs) Handles btnCancelled.Click
        Dim conn As OleDbConnection
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim cmd As New OleDbCommand
        conn = New OleDbConnection(connstr)
        cmd.CommandText = "update Orders set [Status]=@status WHERE Order_ID=" & Session("CheckID")
        cmd.Connection = conn
        conn.Open()
        cmd.Parameters.AddWithValue("@status", "Cancelled")
        cmd.ExecuteNonQuery()
        lblCancelled.Visible = True
        lblCancelled.Text = "Successfully Cancelled"
        conn.Close()
    End Sub

    Private Sub btnDelivered_Click(sender As Object, e As EventArgs) Handles btnDelivered.Click
        Dim conn As OleDbConnection
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim cmd As New OleDbCommand
        conn = New OleDbConnection(connstr)
        cmd.Connection = conn
        conn.Open()
        cmd.CommandText = "update Orders set [Status]=@status WHERE Order_ID=" & Session("CheckID")
        cmd.Parameters.AddWithValue("@status", "Delivered")
        cmd.ExecuteNonQuery()
        lblDelivered.Visible = True
        lblDelivered.Text = "Successfully Delivered"
        conn.Close()
    End Sub

    Private Sub btnReceived_Click(sender As Object, e As EventArgs) Handles btnReceived.Click
        Dim conn As OleDbConnection
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim cmd As New OleDbCommand
        conn = New OleDbConnection(connstr)
        cmd.Connection = conn
        conn.Open()
        cmd.CommandText = "update Orders set [Status]=@status WHERE Order_ID=" & Session("CheckID")
        cmd.Parameters.AddWithValue("@status", "Receieved")
        cmd.ExecuteNonQuery()
        lblReceived.Visible = True
        lblReceived.Text = "Successfully Received"
        conn.Close()

    End Sub

    Private Sub btnShipped_Click(sender As Object, e As EventArgs) Handles btnShipped.Click
        Dim conn As OleDbConnection
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim cmd As New OleDbCommand
        conn = New OleDbConnection(connstr)
        cmd.Connection = conn
        conn.Open()
        cmd.CommandText = "update Orders set [Status]=@status WHERE Order_ID=" & Session("CheckID")
        cmd.Parameters.AddWithValue("@status", "Shipped")
        cmd.ExecuteNonQuery()
        lblShipped.Visible = True
        lblShipped.Text = "Successfully Shipped"
        conn.Close()
    End Sub
End Class
