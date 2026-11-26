<%@ Page Title="Inicio" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Plataforma_prueba._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section aria-labelledby="bienvenidaTitle">
            <h2 id="bienvenidaTitle">Sistema de gestión y solicitudes | Mesa de ayuda TIC</h2>
            <p>Bienvenido al portal de autoservicio de la Mesa de Ayuda TIC. Aquí puedes registrar incidencias, consultar el estado de tus tickets y acceder a la base de conocimiento.</p>
        </section>

        <section aria-labelledby="estadoTitle">
            <h2 id="estadoTitle">Indicadores de estado del servicio</h2>
            <div class="status-grid">
                <div class="status-card status-ok">
                    <span class="status-dot"></span>
                    <div>
                        <h3>Red institucional</h3>
                        <p>Operativo</p>
                    </div>
                </div>
                <div class="status-card status-ok">
                    <span class="status-dot"></span>
                    <div>
                        <h3>Mesa de ayuda</h3>
                        <p>Disponible</p>
                    </div>
                </div>
                <div class="status-card status-warn">
                    <span class="status-dot"></span>
                    <div>
                        <h3>Servicios de impresión</h3>
                        <p>Mantenimiento programado</p>
                    </div>
                </div>
                <div class="status-card status-ok">
                    <span class="status-dot"></span>
                    <div>
                        <h3>Plataformas académicas</h3>
                        <p>Operativas</p>
                    </div>
                </div>
            </div>
        </section>

        <section aria-labelledby="accesosTitle">
            <h2 id="accesosTitle">Accesos rápidos</h2>
            <div class="accesos-rapidos">
                <a runat="server" href="~/Pages/RegistrarTicket.aspx" class="btn btn-primary">Crear Nuevo Ticket</a>
                <a runat="server" href="~/Pages/ConsultaTicket.aspx" class="btn">Consultar Estado</a>
                <a runat="server" href="~/Pages/BaseConocimiento.aspx" class="btn">Base de Conocimiento</a>
                <a runat="server" href="~/Pages/ServicioTic.aspx" class="btn">Catálogo de Servicios TIC</a>
            </div>
        </section>

        <section aria-labelledby="ubicacionTitle">
            <h2 id="ubicacionTitle">Ubicación</h2>
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61705.384281606435!2d-85.86875550019539!3d14.848446584338536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f6c725eeb075131%3A0xd44cb32cf68fdad7!2sUCENM%20-%20Universidad%20Cristiana%20Evang%C3%A9lica%20Nuevo%20Milenio!5e0!3m2!1ses-419!2shn!4v1790906455753!5m2!1ses-419!2shn"
                width="100%"
                height="200"
                loading="lazy"
                title="Ubicación Campus UCENM Catacamas"
                style="border: 1px solid #0876fc;">
            </iframe>
        </section>
    </main>
</asp:Content>
