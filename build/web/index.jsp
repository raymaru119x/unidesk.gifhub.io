<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>UniDesk | HOME</title>
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
            section{
                min-height: 400px;
                margin-top: 100px;
            }
            .card-container {
                display: inline-block;
                width: 300px;
                height: 300px;
                position: relative;
                border-radius: 10px;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
                overflow: hidden;
            }
            .card {
                width: 100%;
                height: 100%;
                border-radius: inherit;
            }
            .card .front-content {
                width: 100%;
                height: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                transition: all 0.6s cubic-bezier(0.23, 1, 0.320, 1)
            }
            .card .front-content p {
                font-size: 32px;
                font-weight: 700;
                opacity: 1;
                background: linear-gradient(45deg,  #67aedd 0%, #9dd1f3 100%);
                background-clip: text;
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                transition: all 0.6s cubic-bezier(0.23, 1, 0.320, 1)
            }
            .card .content {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                text-align: center;
                gap: 10px;
                background: linear-gradient(45deg,  #67aedd 0%, #9dd1f3 100%);
                color: #e8e8e8;
                padding: 20px;
                line-height: 1.5;
                border-radius: 5px;
                pointer-events: none;
                transform: translateY(96%);
                transition: all 0.6s cubic-bezier(0.23, 1, 0.320, 1);
            }

            .card .content .heading {
                font-size: 32px;
                font-weight: 700;
            }

            .card:hover .content {
                transform: translateY(0);
            }

            .card:hover .front-content {
                transform: translateY(-30%);
            }

            .card:hover .front-content p {
                opacity: 0;
            }
            .grid-contenedor {
                display: grid;
                grid-template-columns: repeat(4, 1fr);
            }
            /*FOOTER*/
            .pie-pagina{
                width: 100%;
                background-color: black;
            }
            .pie-pagina .grupo-1{
                width: 100%;
                max-width:1200px;
                margin:auto;
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                grid-gap: 50px;
                padding: 45px 0px;
            }
            .pie-pagina .grupo-1 .box figure{
                width: 100%;
                height: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .pie-pagina .grupo-1 .box figure img{
                width: 200px;
            }
            .pie-pagina .grupo-1 .box h2{
                color: white;
                margin-bottom: 25px;
                font-size: 20px;
            }

            .pe-pagina .grupo-1 .box p{
                color: white;
                margin-bottom: 10px;
            }
            .pie-pagina .grupo-1 .red-social a{
                display: inline-block;
                text-decoration: none;
                width: 45px;
                height: 45px;
                line-height: 45px;
                color: white;
                margin-right: 10px;
                background-color: #0d2033;
                text-align: center;
                transition: all 300ms ease;
            }
            .pie-pagina .grupo-1 .red-social a:hover{
                color: aqua;
            }
            .pie-pagina .grupo-2{
                background-color: #0a1a2a;
                padding: 15px 10px;
                text-align: center;
                color: white;
            }
            .pie-pagina .grupo-2 small{
                font-size: 15px;
            }
            @media screen and (max-width: 800px){
                .pie-pagina.grupo-1{
                    width: 100%;
                    grid-template-columns: repeat(1, 1fr);
                    grid-gap: 30px;
                    padding: 35px 0px;
                }
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
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">

                    <img src="RESOURCES/imgCarrusel/img1.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>PROGRAMA</h5>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="RESOURCES/imgCarrusel/img2.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>NAVEGA</h5>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="RESOURCES/imgCarrusel/img3.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>EJECUTA</h5>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!--Section-->
        <section>
            <center>
                <h2 style="color: black;">NUESTROS OBJETIVOS</h2>
                <div class="grid-contenedor">
                    <div class="card-container">
                        <div class="card">
                            <div class="front-content">
                                <p>OBJETIVO 1</p>
                            </div>
                            <div class="content">
                                <p class="heading">1.</p>
                                <p>
                                    Los usuarios podrán iniciar sesión y trabajar 
                                    consesiones personalizadas. EL sistema mostrará 
                                    detalles como su IP, nombre, y la red a la que 
                                    esta conectado, ayudando a la identificación de 
                                    otros dispositivos conectados. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card-container">
                        <div class="card">
                            <div class="front-content">
                                <p>OBJETIVO 2</p>
                            </div>
                            <div class="content">
                                <p class="heading">2.</p>
                                <p>
                                    Los usuarios podrán iniciar sesión y trabajar 
                                    consesiones personalizadas. EL sistema mostrará 
                                    detalles como su IP, nombre, y la red a la que 
                                    esta conectado, ayudando a la identificación de 
                                    otros dispositivos conectados. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card-container">
                        <div class="card">
                            <div class="front-content">
                                <p>OBJETIVO 3</p>
                            </div>
                            <div class="content">
                                <p class="heading">3.</p>
                                <p>
                                    Los usuarios podrán iniciar sesión y trabajar 
                                    consesiones personalizadas. EL sistema mostrará 
                                    detalles como su IP, nombre, y la red a la que 
                                    esta conectado, ayudando a la identificación de 
                                    otros dispositivos conectados. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card-container">
                        <div class="card">
                            <div class="front-content">
                                <p>OBJETIVO 4</p>
                            </div>
                            <div class="content">
                                <p class="heading">4.</p>
                                <p>
                                    Los usuarios podrán iniciar sesión y trabajar 
                                    consesiones personalizadas. EL sistema mostrará 
                                    detalles como su IP, nombre, y la red a la que 
                                    esta conectado, ayudando a la identificación de 
                                    otros dispositivos conectados. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </center>
        </section>
        <!-- Footer -->
        <footer class="pie-pagina">
            <div class="grupo-1">
                <div class="box">
                    <div class="box">
                        <figure>
                            <a href="#">
                                <img src="1.svg" alt="">
                            </a>
                        </figure>
                    </div>
                    <div class="box">
                        <h2>SOBRE NOSOTROS</h2>
                        <p>bfiudgfuisdbf</p>
                    </div>
                    <div class="box">
                        <h2>SIGUENOS</h2>
                        <div class="red-social">
                            <a href="#" class="fa fa-facebook"></a>
                            <a href="#" class="fa fa-instagram"></a>
                            <a href="#" class="fa fa-youtube"></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="grupo-2">
                <small>&COPY;Todos los derechos Reservados; UniDesk-Grupo5</small>
            </div>
        </footer>
        <!-- JAVASCRIP -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
