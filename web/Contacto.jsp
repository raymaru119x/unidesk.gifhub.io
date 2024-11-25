<%-- 
    Document   : Contacto
    Created on : 1 nov. 2024, 19:41:36
    Author     : Estelagine31
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UniDesk | Contáctanos</title>
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
            }
        </style>
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
        <!--Section-->
        <section>
            <center>
                
            </center>
        </section>
        <!-- Footer -->
        <footer>
            ¨<small>&COPY;Todos los derechos Reservados; UniDesk-Grupo5</small>
        </footer>
    </body>
</html>
