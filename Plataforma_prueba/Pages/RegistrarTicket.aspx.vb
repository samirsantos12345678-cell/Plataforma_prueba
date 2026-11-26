Public Class RegistrarTicket
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs)
        If Not Page.IsValid Then
            pnlConfirmacion.Visible = False
            Return
        End If

        Dim tickets As List(Of Ticket) = TryCast(Session("Tickets"), List(Of Ticket))
        If tickets Is Nothing Then
            tickets = New List(Of Ticket)()
        End If

        Dim numero As Integer = tickets.Count + 1001
        Dim numeroTicket As String = "TIC-" & numero.ToString("0000")

        Dim nuevoTicket As New Ticket() With {
            .NumeroTicket = numeroTicket,
            .Nombre = txtNombre.Text.Trim(),
            .Identidad = txtIdentidad.Text.Trim(),
            .Correo = txtCorreo.Text.Trim(),
            .Telefono = txtTelefono.Text.Trim(),
            .Categoria = ddlCategoria.SelectedValue,
            .Prioridad = rblPrioridad.SelectedValue,
            .Descripcion = txtDescripcion.Text.Trim(),
            .Edificio = txtEdificio.Text.Trim(),
            .Departamento = txtDepartamento.Text.Trim(),
            .Ubicacion = txtUbicacion.Text.Trim(),
            .Estado = "Abierto",
            .TecnicoAsignado = "Pendiente",
            .FechaRegistro = DateTime.Now
        }

        tickets.Add(nuevoTicket)
        Session("Tickets") = tickets
        Session("UsuarioTicket") = txtIdentidad.Text.Trim()

        lblNumeroTicket.Text = numeroTicket
        lblSolicitanteConfirmacion.Text = txtNombre.Text.Trim()
        pnlConfirmacion.Visible = True

        LimpiarFormulario()
    End Sub

    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs)
        LimpiarFormulario()
        pnlConfirmacion.Visible = False
    End Sub

    Private Sub LimpiarFormulario()
        txtNombre.Text = ""
        txtIdentidad.Text = ""
        txtCorreo.Text = ""
        txtConfirmarCorreo.Text = ""
        txtTelefono.Text = ""
        ddlCategoria.SelectedIndex = 0
        rblPrioridad.ClearSelection()
        txtDescripcion.Text = ""
        txtEdificio.Text = ""
        txtDepartamento.Text = ""
        txtUbicacion.Text = ""
    End Sub

End Class
