<%@ Page Title="Contacto" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.vb" Inherits="Plataforma_prueba.Contacto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section aria-labelledby="canalesTitle">
            <h2 id="canalesTitle">Canales de Soporte</h2>
            <p>Si necesitas asistencia técnica, puedes comunicarte con la Mesa de Ayuda TIC por los siguientes canales oficiales.</p>
            <ul>
                <li><strong>Correo institucional:</strong> <a href="mailto:soporte@ucenm.net">soporte@ucenm.net</a></li>
                <li><strong>Teléfono:</strong> <a href="tel:+50427001278">+504 2700-1278</a></li>
                <li><strong>Extensión para soporte:</strong> 101</li>
                <li><strong>Emergencias TIC:</strong> Extensión 102 / <a href="mailto:emergencias.tic@ucenm.net">emergencias.tic@ucenm.net</a></li>
                <li><strong>Horario:</strong> Lunes a viernes, 8:00 am - 5:00 pm / Sábado, 8:00 am - 12:00 pm</li>
                <li><strong>Ubicación:</strong> UCENM, Campus Catacamas, Olancho</li>
            </ul>
        </section>

        <section aria-labelledby="sugerenciasTitle">
            <h2 id="sugerenciasTitle">Formulario de Sugerencias</h2>
            <p>Envíanos tus sugerencias para mejorar el servicio de la Mesa de Ayuda TIC.</p>

            <asp:ValidationSummary ID="vsSugerencias" runat="server" CssClass="validation-summary" HeaderText="Por favor corrige lo siguiente:" />

            <div class="form-grid">
                <div class="form-group">
                    <asp:Label ID="lblNombreSugerencia" runat="server" AssociatedControlID="txtNombreSugerencia" Text="Nombre completo:" />
                    <asp:TextBox ID="txtNombreSugerencia" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvNombreSugerencia" runat="server" ControlToValidate="txtNombreSugerencia"
                        ErrorMessage="El nombre es obligatorio." CssClass="field-error" Display="Dynamic" />
                </div>

                <div class="form-group">
                    <asp:Label ID="lblCorreoSugerencia" runat="server" AssociatedControlID="txtCorreoSugerencia" Text="Correo institucional:" />
                    <asp:TextBox ID="txtCorreoSugerencia" runat="server" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator ID="rfvCorreoSugerencia" runat="server" ControlToValidate="txtCorreoSugerencia"
                        ErrorMessage="El correo es obligatorio." CssClass="field-error" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revCorreoSugerencia" runat="server" ControlToValidate="txtCorreoSugerencia"
                        ValidationExpression="^[\w\.\-]+@ucenm\.net$" ErrorMessage="Use un correo institucional @ucenm.net."
                        CssClass="field-error" Display="Dynamic" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblSugerencia" runat="server" AssociatedControlID="txtSugerencia" Text="Sugerencia:" />
                <asp:TextBox ID="txtSugerencia" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" />
                <asp:RequiredFieldValidator ID="rfvSugerencia" runat="server" ControlToValidate="txtSugerencia"
                    ErrorMessage="La sugerencia es obligatoria." CssClass="field-error" Display="Dynamic" />
            </div>

            <div class="form-actions">
                <asp:Button ID="btnEnviarSugerencia" runat="server" Text="Enviar Sugerencia" CssClass="btn btn-primary" />
                <asp:Button ID="btnLimpiarSugerencia" runat="server" Text="Limpiar" CssClass="btn" CausesValidation="False" OnClick="btnLimpiarSugerencia_Click" />
            </div>

            <asp:Label ID="lblMensajeSugerencia" runat="server" CssClass="success-message" Visible="False" />
        </section>
    </main>
</asp:Content>
