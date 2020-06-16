Imports System.Data
Imports System.Data.OleDb
Partial Class register
    Inherits System.Web.UI.Page

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Dim connection As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("app_data/Drinks.mdb"))
        Dim cmd As New OleDbCommand
        Dim First, Last, Adress, Phone, User, Pass, confirm, Email, type, city, answers, state As String
        Dim Validate As Integer
        First = txtFirst.Text.Trim
        Last = txtLast.Text.Trim
        Adress = txtAdress.Text
        Phone = txtPhone.Text
        User = txtUser.Text.Trim
        Pass = txtPassword.Text.Trim
        confirm = txtConfirmPass.Text.Trim
        Email = txtEmail.Text.Trim
        type = "0"
        answers = txtAnswes.Text.Trim
        city = txtCity.Text.Trim
        state = txtState.Text.Trim
        If Pass = confirm Then
            connection.Open()
            cmd.Connection = connection
            cmd.CommandText = "Insert into Users ([First_Name],[Last_Name],[Address],[City],[State],[Phone],[user_name],[user_password],[email],[Type],[Answers])values('" & First & "','" & Last & "','" & Adress & "','" & city & "','" & state & "','" & Phone & "','" & User & "','" & Pass & "','" & Email & "','" & type & "','" & answers & "')"
            Validate = cmd.ExecuteNonQuery()
            If Validate = 1 Then
                Label1.Visible = True
                Label1.Text = "You have successfuly regestired!"
            End If
            connection.Close()
        Else
            Label2.Visible = True
        End If
    End Sub

    Private Sub btnLogIn_Click(sender As Object, e As EventArgs) Handles btnLogIn.Click
        Response.Redirect("login.aspx?user=" & txtUser.Text)
    End Sub

    Private Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Account.aspx")
    End Sub
End Class
