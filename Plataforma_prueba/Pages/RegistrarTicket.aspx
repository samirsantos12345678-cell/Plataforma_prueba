<%@ Page Title="Registrar Ticket" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarTicket.aspx.vb" Inherits="Plataforma_prueba.RegistrarTicket" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section aria-labelledby="registrarTitle">
            <h2 id="registrarTitle">Captura de Incidencia</h2>
            <p>Complete el formulario para registrar un nuevo ticket de soporte TIC.</p>

            <asp:ValidationSummary ID="vsTicket" runat="server" CssClass="validation-summary" HeaderText="Por favor corrige los siguientes errores:" />

            <div class="form-grid">
                <div class="form-group">
                    <asp:Label ID="lblNombre" runat="server" AssociatedControlID="txtNombre" Text="Nombre completo:" />
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" MaxLength="100" />
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre"
                        ErrorMessage="El nombre completo es obligatorio." CssClass="field-error" Display="Dynamic" />
                </div>

                <div class="form-group">
                    <asp:Label ID="lblIdentidad" runat="server" AssociatedControlID="txtIdentidad" Text="Carnet / Identidad:" />
                    <asp:TextBox ID="txtIdentidad" runat="server" CssClass="form-control" MaxLength="30" />
                    <asp:RequiredFieldValidator ID="rfvIdentidad" runat="server" ControlToValidate="txtIdentidad"
                        ErrorMessage="El carnet o identidad es obligatorio." CssClass="field-error" Display="Dynamic" />
                </div>
            </div>

            <div class="form-grid">
                <div class="form-group">
                    <asp:Label ID="lblCorreo" runat="server" AssociatedControlID="txtCorreo" Text="Correo institucional:" />
                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" TextMode="Email" MaxLength="100" />
                    <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo"
                        ErrorMessage="El correo institucional es obligatorio." CssClass="field-error" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo"
                        ValidationExpression="^[\w\.\-]+@ucenm\.net$"
                        ErrorMessage="El correo debe tener el formato institucional @ucenm.net."
                        CssClass="field-error" Display="Dynamic" />
                </div>

                <div class="form-group">
                    <asp:Label ID="lblConfirmarCorreo" runat="server" AssociatedControlID="txtConfirmarCorreo" Text="Confirmar correo:" />
                    <asp:TextBox ID="txtConfirmarCorreo" runat="server" CssClass="form-control" TextMode="Email" MaxLength="100" />
                    <asp:RequiredFieldValidator ID="rfvConfirmarCorreo" runat="server" ControlToValidate="txtConfirmarCorreo"
                        ErrorMessage="Debe confirmar el correo institucional." CssClass="field-error" Display="Dynamic" />
                    <asp:CompareValidator ID="cvCorreo" runat="server" ControlToValidate="txtConfirmarCorreo" ControlToCompare="txtCorreo"
                        ErrorMessage="Los correos no coinciden." CssClass="field-error" Display="Dynamic" />
                </div>
            </div>

            <div class="form-grid">
                <div class="form-group">
                    <asp:Label ID="lblTelefono" runat="server" AssociatedControlID="txtTelefono" Text="Teléfono:" />
                    <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" MaxLength="20" />
                </div>

                <div class="form-group">
                    <asp:Label ID="lblCategoria" runat="server" AssociatedControlID="ddlCategoria" Text="Categoría del problema:" />
                    <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Seleccione una categoría" Value="" />
                        <asp:ListItem Text="Hardware" Value="Hardware" />
                        <asp:ListItem Text="Software" Value="Software" />
                        <asp:ListItem Text="Redes" Value="Redes" />
                        <asp:ListItem Text="Cuentas" Value="Cuentas" />
                        <asp:ListItem Text="Otros" Value="Otros" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCategoria" runat="server" ControlToValidate="ddlCategoria" InitialValue=""
                        ErrorMessage="Debe seleccionar una categoría." CssClass="field-error" Display="Dynamic" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblPrioridad" runat="server" Text="Nivel de prioridad:" />
                <asp:RadioButtonList ID="rblPrioridad" runat="server" CssClass="radio-list" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Baja" Value="Baja" />
                    <asp:ListItem Text="Media" Value="Media" />
                    <asp:ListItem Text="Alta" Value="Alta" />
                    <asp:ListItem Text="Crítica" Value="Crítica" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvPrioridad" runat="server" ControlToValidate="rblPrioridad"
                    ErrorMessage="Debe seleccionar un nivel de prioridad." CssClass="field-error" Display="Dynamic" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblDescripcion" runat="server" AssociatedControlID="txtDescripcion" Text="Descripción detallada:" />
                <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" MaxLength="1000" />
                <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion"
                    ErrorMessage="La descripción detallada es obligatoria." CssClass="field-error" Display="Dynamic" />
            </div>

            <div class="form-grid">
                <div class="form-group">
                    <asp:Label ID="lblEdificio" runat="server" AssociatedControlID="txtEdificio" Text="Edificio:" />
                    <asp:TextBox ID="txtEdificio" runat="server" CssClass="form-control" MaxLength="50" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblDepartamento" runat="server" AssociatedControlID="txtDepartamento" Text="Departamento:" />
                    <asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control" MaxLength="50" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblUbicacion" runat="server" AssociatedControlID="txtUbicacion" Text="Ubicación específica:" />
                <asp:TextBox ID="txtUbicacion" runat="server" CssClass="form-control" MaxLength="100" placeholder="Aula 101, Oficina 202, etc." />
            </div>

            <div class="form-actions">
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary" OnClick="btnRegistrar_Click" />
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Formulario" CssClass="btn" CausesValidation="False" OnClick="btnLimpiar_Click" />
            </div>

            <asp:Panel ID="pnlConfirmacion" runat="server" Visible="False" CssClass="success-panel">
                <h3>Ticket registrado correctamente</h3>
                <p><strong>Número de ticket:</strong> <asp:Label ID="lblNumeroTicket" runat="server" /></p>
                <p><strong>Solicitante:</strong> <asp:Label ID="lblSolicitanteConfirmacion" runat="server" /></p>
                <p><strong>Estado:</strong> Abierto</p>
                <p>Guarde su número de ticket para consultar el seguimiento.</p>
            </asp:Panel>
        </section>
    </main>
</asp:Content>
