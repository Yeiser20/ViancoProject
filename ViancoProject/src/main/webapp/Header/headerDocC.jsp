<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Css/head.css">
</head>
<body>
    <header>
        <img src="https://vianco.uaemex.mx/wp-content/uploads/2020/05/Vianco-logo.png" alt="" class="logo">
        <nav class="nav-menu">
            <ul class="menu">
                <li> <a href="MenuCuentas.jsp" > Inicio</a> </li>
                <li> <a href="#"> Documentos</a>
                    <ul class="menu-vertical">
                        <li> <a href="MenuCuenta/Doc3Ev.jsp" > Documento3Ev</a></li>
                        <li> <a href="MenuCuenta/Doc5Eva.jsp"> Documento5Ev</a></li>
                    </ul>
                </li>
                <li> <a href="#"> Modificaciones</a>
                    <ul class="menu-vertical">
                        <li> <a href="Altas/AltaPersonas.jsp"> Alta Persona</a></li>
                    </ul>
                </li>
                <li> <a href="#"> Contacto</a> </li>
            </ul>

        </nav>
        <nav class="nav-menu">
            <ul class="menu">
                <li><a href="#">Cerrar Sesion</a>
            <ul class="menu-vertical">
                <li>  <a href="#"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/480px-User_icon_2.svg.png" class="logo2" alt=""> <br> ${nombres} <br> ${correo} 
                </a></li> <li><a href="index.jsp">Salir</a></li>
            </ul>
   </li>
               
        </ul>
        </nav>
    </header>
</body>
</html>