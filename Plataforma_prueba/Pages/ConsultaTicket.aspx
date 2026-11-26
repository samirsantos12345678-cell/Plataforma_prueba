<%@ Page Title="Consulta de Ticket" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaTicket.aspx.vb" Inherits="Plataforma_prueba.ConsultaTicket" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section aria-labelledby="buscarTitle">
            <h2 id="buscarTitle">Buscar ticket</h2>
            <p>Ingrese su número de ticket o número de identidad para consultar el estado de su solicitud.</p>

            <div class="search-row">
                <div class="form-group search-group">
                    <asp:Label ID="lblBusqueda" runat="server" AssociatedControlID="txtBusqueda" Text="Número de ticket o identidad:" />
                    <asp:TextBox ID="txtBusqueda" runat="server" CssClass="form-control" MaxLength="50" />
                </div>
                <div class="form-actions search-actions">
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBuscar_Click" />
                    <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" CssClass="btn" CausesValidation="False" OnClick="btnMostrarTodos_Click" />
                </div>
            </div>

            <asp:Label ID="lblMensajeConsulta" runat="server" CssClass="field-error" Visible="False" />
        </section>

        <section aria-labelledby="historialTitle">
            <h2 id="historialTitle">Historial de seguimiento</h2>
            <asp:GridView ID="gvTickets" runat="server" AutoGenerateColumns="False" CssClass="gridview"
                EmptyDataText="No se encontraron tickets para la búsqueda realizada." GridLines="None"
                DataKeyNames="NumeroTicket" OnRowCommand="gvTickets_RowCommand">
                <Columns>
                    <asp:BoundField DataField="NumeroTicket" HeaderText="N.º Ticket" />
                    <asp:BoundField DataField="Nombre" HeaderText="Solicitante" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoría" />
                    <asp:BoundField DataField="Prioridad" HeaderText="Prioridad" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" />
                    <asp:BoundField DataField="TecnicoAsignado" HeaderText="Técnico asignado" />
                    <asp:BoundField DataField="FechaRegistro" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy HH:mm}" />
                    <asp:TemplateField HeaderText="Acción">
                        <ItemTemplate>
                            <asp:Button ID="btnEliminarTicket" runat="server" Text="Eliminar" CssClass="btn btn-danger"
                                CommandName="EliminarTicket" CommandArgument='<%# Eval("NumeroTicket") %>'
                                OnClientClick="return confirm('¿Desea eliminar este ticket?');" CausesValidation="False" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </section>
    </main>
</asp:Content>
