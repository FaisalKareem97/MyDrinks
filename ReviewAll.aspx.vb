Imports System.Data
Imports System.Data.OleDb
Partial Class ReviewAll
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim conn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("app_data/Drinks.mdb"))
        Dim ad As New OleDbDataAdapter("Select * From Orders", conn)
        Dim ds As New DataSet

        conn.Open()
        ad.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        conn.Close()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ID As String
        ID = TextBox1.Text
        Session("CheckID") = ID
        Response.Redirect("ReviewAll1.aspx")
        Response.Write(ID)
    End Sub
End Class
