Imports System.Data
Imports System.Data.OleDb
Partial Class ReviewProcessing
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim conn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("app_data/Drinks.mdb"))
        Dim ad As New OleDbDataAdapter("Select * From Orders Where Status='Processing'", conn)
        Dim ds As New DataSet

        conn.Open()
        ad.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        conn.Close()
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ID As String
        ID = TextBox1.Text
        Dim conn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("app_data/Drinks.mdb"))
        Dim ad As New OleDbDataAdapter("Select * From Orders Where Status='Processing' AND Order_ID=" & ID, conn)
        Dim ds As New DataSet
        conn.Open()
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            Session("CheckID1") = ID
            Response.Redirect("ReviewProcessing1.aspx")
        Else
            Response.Write("incorrect")
        End If
    End Sub
End Class
