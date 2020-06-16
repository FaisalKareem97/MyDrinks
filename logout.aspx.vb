
Partial Class logout
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Session.Abandon()
        Response.Redirect("login.aspx")
    End Sub
End Class
