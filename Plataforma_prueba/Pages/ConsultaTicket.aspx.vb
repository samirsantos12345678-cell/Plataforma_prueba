Public Class ConsultaTicket
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CargarTickets()
        End If
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs)
        Dim termino As String = txtBusqueda.Text.Trim().ToLower()
        Dim tickets As List(Of Ticket) = ObtenerTickets()

        If String.IsNullOrWhiteSpace(termino) Then
            lblMensajeConsulta.Text = "Ingrese un número de ticket o identidad para buscar."
            lblMensajeConsulta.CssClass = "field-error"
            lblMensajeConsulta.Visible = True
            gvTickets.DataSource = tickets
            gvTickets.DataBind()
            Return
        End If

        Dim resultados = tickets.Where(Function(t) _
            (Not String.IsNullOrEmpty(t.NumeroTicket) AndAlso t.NumeroTicket.ToLower().Contains(termino)) OrElse
            (Not String.IsNullOrEmpty(t.Identidad) AndAlso t.Identidad.ToLower().Contains(termino))
        ).ToList()

        lblMensajeConsulta.Visible = False
        gvTickets.DataSource = resultados
        gvTickets.DataBind()

        Session("UsuarioTicket") = termino
    End Sub

    Protected Sub btnMostrarTodos_Click(sender As Object, e As EventArgs)
        txtBusqueda.Text = ""
        lblMensajeConsulta.Visible = False
        CargarTickets()
    End Sub

    Protected Sub gvTickets_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        If e.CommandName = "EliminarTicket" Then
            Dim numeroTicket As String = e.CommandArgument.ToString()
            Dim tickets As List(Of Ticket) = ObtenerTickets()
            Dim ticketAEliminar = tickets.FirstOrDefault(Function(t) t.NumeroTicket = numeroTicket)

            If ticketAEliminar IsNot Nothing Then
                tickets.Remove(ticketAEliminar)
                Session("Tickets") = tickets
                lblMensajeConsulta.Text = "Ticket " & numeroTicket & " eliminado correctamente."
                lblMensajeConsulta.CssClass = "success-message"
                lblMensajeConsulta.Visible = True
            End If

            CargarTickets()
        End If
    End Sub

    Private Sub CargarTickets()
        Dim tickets As List(Of Ticket) = ObtenerTickets()
        gvTickets.DataSource = tickets
        gvTickets.DataBind()
    End Sub

    Private Function ObtenerTickets() As List(Of Ticket)
        Dim tickets As List(Of Ticket) = TryCast(Session("Tickets"), List(Of Ticket))
        If tickets Is Nothing Then
            tickets = ObtenerTicketsEjemplo()
            Session("Tickets") = tickets
        End If
        Return tickets
    End Function

    Private Function ObtenerTicketsEjemplo() As List(Of Ticket)
        Return New List(Of Ticket) From {
            New Ticket() With {.NumeroTicket = "TIC-1001", .Nombre = "Usuario Ejemplo", .Identidad = "0801-0000-00001", .Categoria = "Redes", .Prioridad = "Alta", .Estado = "Abierto", .TecnicoAsignado = "Pendiente", .FechaRegistro = DateTime.Now.AddDays(-2)},
            New Ticket() With {.NumeroTicket = "TIC-1002", .Nombre = "Ana Martínez", .Identidad = "0801-0000-00002", .Categoria = "Software", .Prioridad = "Media", .Estado = "En Proceso", .TecnicoAsignado = "Ana Martínez", .FechaRegistro = DateTime.Now.AddDays(-1)},
            New Ticket() With {.NumeroTicket = "TIC-1003", .Nombre = "Luis Pérez", .Identidad = "0801-0000-00003", .Categoria = "Hardware", .Prioridad = "Baja", .Estado = "Resuelto", .TecnicoAsignado = "Luis Pérez", .FechaRegistro = DateTime.Now.AddDays(-3)}
        }
    End Function

End Class
