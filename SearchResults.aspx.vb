Imports System.Data.OleDb
Imports System.Data
Partial Class Drinks_Project_SearchResults
    Inherits System.Web.UI.Page

    Private Sub Drinks_Project_SearchResults_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Dim strLocation, strProductID, strDescription, dblPrice, strCart As String
        Dim con As OleDbConnection
        Dim ad As OleDbDataAdapter
        Dim ds As New DataSet
        Dim strCategory As String


        strCategory = Session("sescategory")
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("App_data/Drinks.mdb")
        con = New OleDbConnection(connstr)
        ad = New OleDbDataAdapter("select * From Drinks Where Category ='" & strCategory & "'", con)
        Try
            con.Open()
            ad.Fill(ds)
            GridView1.Visible = True
            GridView1.DataSource = ds
            GridView1.DataBind()
            con.Close()
        Catch
            con.Close()
        End Try
    End Sub



    Protected Sub GridView_Data_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Account.aspx")
    End Sub
End Class

