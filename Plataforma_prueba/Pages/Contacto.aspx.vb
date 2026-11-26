Public Class Contacto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnEnviarSugerencia_Click(sender As Object, e As EventArgs) Handles btnEnviarSugerencia.Click
        If Page.IsValid Then
            lblMensajeSugerencia.Text = "Gracias, tu sugerencia ha sido enviada correctamente."
            lblMensajeSugerencia.Visible = True
            txtNombreSugerencia.Text = ""
            txtCorreoSugerencia.Text = ""
            txtSugerencia.Text = ""
        End If
    End Sub

    Protected Sub btnLimpiarSugerencia_Click(sender As Object, e As EventArgs)
        txtNombreSugerencia.Text = ""
        txtCorreoSugerencia.Text = ""
        txtSugerencia.Text = ""
        lblMensajeSugerencia.Visible = False
    End Sub

End Class
