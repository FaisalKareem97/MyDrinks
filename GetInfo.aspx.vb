Imports System.Data
Imports System.Data.OleDb
Partial Class GetInfo
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load

        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("app_data/Drinks.mdb")
        Dim sql As String = "Select Customer_ID from Users Where user_name = '" & Session("sesUser") & "' AND user_password = '" & Session("sesPass") & "'"

        Using conn As New OleDbConnection(connstr)
            Using da As New OleDbDataAdapter(sql, connstr)
                Using ds As New DataSet()
                    da.Fill(ds, "Users")
                    DropDownList1.DataSource = ds
                    DropDownList1.DataValueField = "Customer_ID"
                    DropDownList1.DataTextField = "Customer_ID"
                    DropDownList1.DataBind()
                End Using
            End Using
        End Using
        Session("sesCustomer") = DropDownList1.SelectedItem.ToString

        Response.Redirect("Index.aspx")

    End Sub
End Class
