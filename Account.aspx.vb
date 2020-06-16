
Partial Class Account
    Inherits System.Web.UI.Page

    'Private Sub btnShow_Click(sender As Object, e As EventArgs) Handles btnShow.Click
    '    lblPass.Visible = True
    '    lblPass.Text = Session("sesPass")
    'End Sub

    'Private Sub btnHide_Click(sender As Object, e As EventArgs) Handles btnHide.Click
    '    lblPass.Visible = False
    'End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("ViewOrders.aspx")
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Change.aspx")
    End Sub

    Private Sub btnChangeUser_Click(sender As Object, e As EventArgs) Handles btnChangeUser.Click
        Response.Redirect("ChangeUser.aspx")
    End Sub

    Private Sub Account_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Private Sub btnChangeEmail_Click(sender As Object, e As EventArgs) Handles btnChangeEmail.Click
        Response.Redirect("ChangeEmail.aspx")
    End Sub
End Class

