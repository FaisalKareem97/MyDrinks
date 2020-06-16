Imports System.Data
Imports System.Data.OleDb
Partial Class ChangeUser
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim conn As OleDbConnection
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim cmd As New OleDbCommand
        conn = New OleDbConnection(connstr)
        Dim currentPassword As String = Session("sesPass")
        Dim ID As Integer = Session("sesCustomer")
        conn.Open()
            cmd.Connection = conn
        cmd.CommandText = "update Users set [user_name]=@Name WHERE Customer_ID =" & ID & ""
        cmd.Parameters.AddWithValue("@Name", txtCurrent.Text)
        cmd.ExecuteNonQuery()
        Label1.Text = "Changes saved succesfully!"
        Label1.Visible = True
        conn.Close()

    End Sub
End Class
