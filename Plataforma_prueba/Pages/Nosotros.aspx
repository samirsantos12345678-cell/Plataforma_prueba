<%@ Page Title="Nosotros" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Nosotros.aspx.vb" Inherits="Plataforma_prueba.Nosotros" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section aria-labelledby="equipoTitle">
            <h2 id="equipoTitle">Equipo de Soporte Técnico</h2>
            <p>El Departamento de Tecnologías de la Información de UCENM Campus Catacamas brinda soporte técnico, mantenimiento y acompañamiento tecnológico a estudiantes, docentes y personal administrativo.</p>
            <div class="tarjetas">
                <h2>Roles del equipo</h2>
                <article>
                    <h3>Coordinador TIC</h3>
                    <p>Supervisa la operación de la mesa de ayuda, asigna prioridades y gestiona los escalamientos.</p>
                </article>
                <article>
                    <h3>Técnico de Redes</h3>
                    <p>Atiende incidencias de conectividad, Wi-Fi, puntos de red y acceso a servicios institucionales.</p>
                </article>
                <article>
                    <h3>Técnico de Hardware</h3>
                    <p>Realiza diagnóstico, mantenimiento y soporte a equipos de cómputo e impresoras.</p>
                </article>
                <article>
                    <h3>Soporte de Software</h3>
                    <p>Apoya en instalación de programas, licencias académicas, cuentas y plataformas institucionales.</p>
                </article>
            </div>
        </section>

        <section aria-labelledby="politicasTitle">
            <h2 id="politicasTitle">Políticas de Seguridad Informática</h2>
            <ul>
                <li>Usar únicamente cuentas y credenciales institucionales asignadas.</li>
                <li>No compartir contraseñas ni información sensible por canales no autorizados.</li>
                <li>Reportar de inmediato cualquier incidente de seguridad o acceso sospechoso.</li>
                <li>Realizar respaldos periódicos de la información académica importante.</li>
                <li>Instalar software únicamente con autorización del Departamento TIC.</li>
            </ul>
        </section>

        <section aria-labelledby="horariosTitle">
            <h2 id="horariosTitle">Horarios de Laboratorio y Atención</h2>
            <table>
                <caption>Horarios de atención del soporte TIC</caption>
                <thead>
                    <tr>
                        <th>Servicio</th>
                        <th>Días</th>
                        <th>Horario</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Mesa de ayuda presencial</td>
                        <td>Lunes a viernes</td>
                        <td>8:00 am - 5:00 pm</td>
                    </tr>
                    <tr>
                        <td>Soporte en laboratorio</td>
                        <td>Lunes a viernes</td>
                        <td>8:00 am - 4:30 pm</td>
                    </tr>
                    <tr>
                        <td>Atención sabatina</td>
                        <td>Sábado</td>
                        <td>8:00 am - 12:00 pm</td>
                    </tr>
                </tbody>
            </table>
        </section>

        <section aria-labelledby="escalamientoTitle">
            <h2 id="escalamientoTitle">Canales Oficiales de Escalamiento</h2>
            <ol>
                <li><strong>Nivel 1:</strong> Registro del ticket en la Mesa de Ayuda TIC.</li>
                <li><strong>Nivel 2:</strong> Asignación a técnico especializado según la categoría.</li>
                <li><strong>Nivel 3:</strong> Escalamiento al coordinador TIC para incidencias críticas o no resueltas.</li>
                <li><strong>Nivel 4:</strong> Comunicación con proveedores externos o autoridades institucionales cuando aplique.</li>
            </ol>
        </section>
    </main>
</asp:Content>
