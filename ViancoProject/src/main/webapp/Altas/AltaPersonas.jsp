<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title> Sistema PDFS</title>
    <link rel="stylesheet" href="Estilos.css">
</head>

<body>
    <form action="AltaPersonas">
        <h1>Registrar Personas</h1> <br>
        <label>Nombre(s)<input type="text" id="Nombre" name="Nombre"></label>
        <label>Apellido Paterno<input type="text" id="apellidoP" name="apellidoP"></label>
        <label>Apellido Materno<input type="text" id="apellidoM" name="apellidoM"></label>
        <br> <br>
        <label>Fecha Nacimiento <input type="text" id="FechNac" name="fechaNac"></label>
        <label>Genero<input type="text" id="Genero" name="Genero"></label>
        <br> <br>
        <label>Paìs<select name="Pais" id="Pais">
                <option value="1">Mexico</option>
            </select></label>
        <label>Estado <select name="Estado" id="Estado">
                <option value="1">Estado Mexico</option>
                <option value="1">Ciudad Mexico</option>
            </select></label>
        <br><br>
        <label>Delegacion <select name="Delegacion" id="Delegacion">
                <option value="1">Toluca</option>
                <option value="2">Lerma</option>
            </select></label>
        <label>Colonia <select name="Colonia" id="Colonia">
                <option value="1">San pablo autopan</option>
                <option value="2">San Pancho</option>
            </select></label>
        <label>Calle <select name="Calle" id="Calle">
                <option value="1">Calle San Antonio</option>
                <option value="2">AV. Toluca</option>
            </select></label>

        <br> <br>
        <label>numero exterior<input type="text" id="nExt" name="nExt"></label>
        <label>numero interior<input type="text" id="nInt" name="nInt"></label>
        <label>C.P<input type="text" id="cp" name="cp"></label>
        <label>Estado Civil<input type="text" id="EdoCivil" name="EdoCivil"></label> <br> <br>
        <label>Email Personal<input type="text" id="EmailPersonal" name="EmailPersonal"></label> <br> <br>
        <label>Curp<input type="text" id="Curp" name="Curp"></label>
        <label>Nacionalidad<input type="text" id="Nacionalidad" name="Nacionalidad"></label>
        <br> <br>
        <label>Firma<input type="text" id="Firma" name="Firma"></label>
        <br>
        <br>
        <input type="submit" name="accion" value="Enviar Formulario">

    </form>
</body>

</html>