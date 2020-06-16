
Partial Class Employee
    Inherits System.Web.UI.Page


    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("ReviewAll.aspx")
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("ReviewProcessing.aspx")
    End Sub


End Class
