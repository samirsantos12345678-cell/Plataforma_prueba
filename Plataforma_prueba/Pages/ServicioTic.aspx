<%@ Page Title="Servicios TIC" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ServicioTic.aspx.vb" Inherits="Plataforma_prueba.ServicioTic" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h2>Catálogo de Servicios TIC</h2>
        <p>Conoce los servicios tecnológicos que ofrece la institución y los tiempos de atención comprometidos para cada uno.</p>

        <section class="tarjetas">
            <h2>Directorio de servicios</h2>

            <article>
                <h3>Redes</h3>
                <p>Wi-Fi institucional y puntos de red cableada.</p>
                <p><strong>Canal de atención:</strong> Ticket en línea o extensión 101.</p>
                <p><strong>Requisito:</strong> Carnet vigente.</p>
            </article>

            <article>
                <h3>Hardware</h3>
                <p>Reparación de computadoras e impresoras.</p>
                <p><strong>Canal de atención:</strong> Ticket en línea o presencial.</p>
                <p><strong>Requisito:</strong> Código de inventario del equipo.</p>
            </article>

            <article>
                <h3>Cuentas</h3>
                <p>Correo institucional y accesos a plataformas.</p>
                <p><strong>Canal de atención:</strong> Ticket en línea.</p>
                <p><strong>Requisito:</strong> Documento de identidad.</p>
            </article>

            <article>
                <h3>Software</h3>
                <p>Instalación de programas y licencias académicas.</p>
                <p><strong>Canal de atención:</strong> Ticket en línea.</p>
                <p><strong>Requisito:</strong> Autorización del docente.</p>
            </article>
        </section>

        <section>
            <h2>Acuerdos de Nivel de Servicio (SLA)</h2>

            <table>
                <caption>Tiempos de atención por categoría de soporte</caption>
                <thead>
                    <tr>
                        <th rowspan="2">Categoría</th>
                        <th rowspan="2">Servicio</th>
                        <th colspan="2">Acuerdo de nivel de servicio</th>
                    </tr>
                    <tr>
                        <th>Tiempo de atención</th>
                        <th>Nivel de impacto</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th rowspan="2" scope="rowgroup">Redes</th>
                        <td>Falla de Wi-Fi</td>
                        <td>4 horas</td>
                        <td>Alto</td>
                    </tr>
                    <tr>
                        <td>Punto de red cableada</td>
                        <td>1 día</td>
                        <td>Medio</td>
                    </tr>
                    <tr>
                        <th rowspan="2" scope="rowgroup">Hardware</th>
                        <td>Reparación de computadora</td>
                        <td>2 días</td>
                        <td>Medio</td>
                    </tr>
                    <tr>
                        <td>Falla de impresora</td>
                        <td>1 día</td>
                        <td>Bajo</td>
                    </tr>
                    <tr>
                        <th rowspan="2" scope="rowgroup">Cuentas</th>
                        <td>Reseteo de contraseña</td>
                        <td>1 hora</td>
                        <td>Alto</td>
                    </tr>
                    <tr>
                        <td>Creación de correo</td>
                        <td>1 día</td>
                        <td>Medio</td>
                    </tr>
                    <tr>
                        <th rowspan="2" scope="rowgroup">Software</th>
                        <td>Instalación de programas</td>
                        <td>2 días</td>
                        <td>Bajo</td>
                    </tr>
                    <tr>
                        <td>Gestión de licencias</td>
                        <td>3 días</td>
                        <td>Medio</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="4">Los tiempos corren en horario hábil (lunes a viernes).</td>
                    </tr>
                </tfoot>
            </table>
        </section>
    </main>
</asp:Content>
