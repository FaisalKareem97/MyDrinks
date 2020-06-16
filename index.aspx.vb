
Partial Class index
    Inherits System.Web.UI.Page
    Private Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Account.aspx")
    End Sub

    Private Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Dim search As String
        search = txtSearch.Text

        Response.Redirect("ActualSearchResult.aspx?search=" & search)
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim Category As String = DropDownList1.SelectedItem.ToString
        Response.Redirect("FindPage.aspx?category=" & Category)
    End Sub
End Class


