Imports System.Data
Imports System.Data.OleDb
Partial Class Change
    Inherits System.Web.UI.Page

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim conn As OleDbConnection
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        Dim cmd As New OleDbCommand
        conn = New OleDbConnection(connstr)
        Dim currentPassword As String = Session("sesPass")
        Dim ID As Integer = Session("sesCustomer")
        Dim i As Integer
        If txtCurrent.Text = currentPassword And txtConfirm.Text = txtNew.Text Then
            conn.Open()
            cmd.Connection = conn
            cmd.CommandText = "update Users set [user_password]=@pass WHERE Customer_ID =" & ID & ""
            cmd.Parameters.AddWithValue("@pass", txtNew.Text)
            cmd.ExecuteNonQuery()
            lblSuccess.Visible = True
            lblSuccess.Text = "Changes have been saved!"
        Else
            lblFail.Visible = True
            lblFail.Text = "Incorrect information given."
        End If



    End Sub

    Private Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Account.aspx")
    End Sub
    'Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '    Response.Redirect("Index.aspx")
    'End Sub

End Class
