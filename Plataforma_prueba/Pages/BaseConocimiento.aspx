<%@ Page Title="Centro de Ayuda" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BaseConocimiento.aspx.vb" Inherits="Plataforma_prueba.BaseConocimiento" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section>
            <h2>Centro de Ayuda</h2>
            <p>Centro de ayuda con soluciones para los problemas tecnológicos más comunes. Si no encuentras la solución, <a runat="server" href="~/Pages/RegistrarTicket.aspx">registra un ticket</a>.</p>
        </section>

        <section>
            <h2>Contenido</h2>
            <div class="contenido-botones">
                <a href="#glosario" class="btn">Glosario técnico</a>
                <a href="#wifi" class="btn">Configurar el Wi-Fi institucional</a>
                <a href="#password" class="btn">Resetear la contraseña</a>
                <a href="#impresora" class="btn">La impresora no imprime</a>
                <a href="#ip" class="btn">Renovar la dirección IP</a>
            </div>
        </section>

        <section id="glosario">
            <h2>Glosario técnico</h2>
            <dl>
                <dt>SSID</dt>
                <dd>Nombre de la red inalámbrica.</dd>
                <dt>VPN</dt>
                <dd>Conexión segura hacia la red institucional.</dd>
                <dt>SLA</dt>
                <dd>Acuerdo de nivel de servicio: tiempo comprometido de atención.</dd>
                <dt>Ticket</dt>
                <dd>Registro de una solicitud o incidencia enviada a soporte.</dd>
                <dt>Dirección IP</dt>
                <dd>Número que identifica a un dispositivo dentro de una red.</dd>
            </dl>
        </section>

        <section>
            <h2>Guías paso a paso</h2>

            <article id="wifi">
                <h3>Configurar el Wi-Fi institucional</h3>
                <ol>
                    <li>Abrir la configuración de red del dispositivo.
                        <ul>
                            <li>Windows: Configuración, Red e Internet, Wi-Fi.</li>
                            <li>Android: Ajustes, Conexiones, Wi-Fi.</li>
                        </ul>
                    </li>
                    <li>Seleccionar la red institucional.</li>
                    <li>Ingresar usuario y contraseña institucionales.</li>
                    <li>Esperar la confirmación de conexión.</li>
                </ol>
            </article>

            <article id="password">
                <h3>Resetear la contraseña</h3>
                <ol>
                    <li>Ingresar al portal de cuentas.</li>
                    <li>Elegir la opción de recuperación.
                        <ol>
                            <li>Escribir el correo institucional.</li>
                            <li>Abrir el enlace recibido en el correo.</li>
                        </ol>
                    </li>
                    <li>Definir la nueva contraseña.</li>
                    <li>Iniciar sesión con la nueva contraseña.</li>
                </ol>
            </article>

            <article id="impresora">
                <h3>La impresora no imprime</h3>
                <ol>
                    <li>Verificar que la impresora esté encendida y con papel.</li>
                    <li>Revisar la conexión.
                        <ul>
                            <li>Cable USB bien conectado.</li>
                            <li>Conectada a la misma red Wi-Fi que el equipo.</li>
                        </ul>
                    </li>
                    <li>Cancelar los trabajos pendientes en la cola de impresión.</li>
                    <li>Reiniciar la impresora y volver a imprimir.</li>
                    <li>Si persiste, registrar un ticket en la categoría Hardware.</li>
                </ol>
            </article>

            <article id="ip">
                <h3>Renovar la dirección IP</h3>
                <p>Abrir el Símbolo del sistema y ejecutar los siguientes comandos:</p>
                <pre><code>ipconfig /release
ipconfig /renew</code></pre>
            </article>
        </section>
    </main>
</asp:Content>
