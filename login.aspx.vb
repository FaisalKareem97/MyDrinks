Imports System.Data
Imports System.Data.OleDb


Partial Class _Default
    Inherits System.Web.UI.Page
    Private Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        Dim con As OleDbConnection
        Dim ad As OleDbCommand
        Dim ds As New DataSet

        Dim User, Pass As String
        User = txtusername.Text
        Pass = txtpassword.Text
        Dim connstr As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" & Server.MapPath("app_data/Drinks.mdb")
        con = New OleDbConnection(connstr)
        ad = New OleDbCommand("SELECT * FROM Users WHERE user_name = '" & User & "'" & " AND user_password = '" & txtpassword.Text & "'", con)

        con.Open()
        Dim reading As OleDb.OleDbDataReader = ad.ExecuteReader()

        If reading.Read() = True Then
            Session("sesUser") = User
            Session("sesPass") = Pass
            Dim adapter As OleDbDataAdapter
            Dim data As New DataSet
            Dim sql As String = "Select * From Users Where user_name ='" & txtusername.Text & "' AND user_password='" & txtpassword.Text & "' AND Type=1"
            adapter = New OleDbDataAdapter(sql, con)
            adapter.Fill(data)
            If data.Tables(0).Rows.Count > 0 Then
                Response.Redirect("Employee.aspx")
            Else
                Response.Write("Not Employee!")
            End If
            Response.Redirect("GetInfo.aspx")
        Else
            Label1.Text = "Invalid user name or password!"
            Label1.Visible = True
            Label2.Text = Val(Label2.Text) + 1
            Label3.Visible = True
            Label4.Visible = True
            Label5.Visible = True
            Label3.Text = Val(Label3.Text) - 1
            If Label2.Text = "5" Then
                lblEmail.Visible = True
                txtEmail.Visible = True
                lblSecurity.Visible = True
                lblQuestion.Visible = True
                txtQuestion.Visible = True
                btnEmail.Visible = True
            End If

        End If
        con.Close()

    End Sub

    Private Sub btnShow_Click(sender As Object, e As EventArgs) Handles btnShow.Click
        txtpassword.TextMode = TextBoxMode.SingleLine
        btnHide.Visible = True
        btnShow.Visible = False
    End Sub

    Private Sub btnHide_Click(sender As Object, e As EventArgs) Handles btnHide.Click 'Deletes the password for some reason...
        txtpassword.TextMode = TextBoxMode.Password
        btnHide.Visible = False
        btnShow.Visible = True
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Register.aspx")
    End Sub

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load 'This causes other usenernames to not work.
        If Not IsPostBack Then
            Dim user As String
            user = Request("user")
            txtusername.Text = user
        End If



    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    'Protected Sub btnEmail_Click(sender As Object, e As EventArgs) Handles btnEmail.Click
    '    Dim utilisateur As String = ConfigurationSettings.AppSettings("StmpUtilisateur")
    '    Dim pass As String = ConfigurationSettings.AppSettings("SmtpPassword")
    '    Dim server As String = ConfigurationSettings.AppSettings("SmtpServer")

    '    Dim Message As New Mail.MailMessage()
    '    Message.From = "f.alabdulkareem97@gmail.com"
    '    Message.To = "superman@gmail.com"
    '    Message.Subject = "test"
    '    Message.Body = "salut je voulais savoir comment tu allais"

    '    ' You won't need the calls to Message.Fields.Add()

    '    ' Replace SmtpMail.SmtpServer = server with the following:
    '    Dim client As New SmtpClient(server)
    '    client.Port = 587
    '    client.EnableSsl = True
    '    client.Credentials = New System.Net.NetworkCredential(utilisateur, pass);

    'Try
    '        client.Send(Message)
    '    Catch ex As Exception
    '        ' ...
    '    End Try

    'End Sub
End Class
