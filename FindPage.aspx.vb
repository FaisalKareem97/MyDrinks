
Partial Class Drinks_Project_FindPage
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim strCategory As String
        Dim strSearch As String
        strSearch = Request("search")
        strCategory = Request("category")
        Session("sescategory") = strCategory
        Session("sessearch") = strSearch


        Response.Redirect("SearchResults.aspx?")
    End Sub
End Class
