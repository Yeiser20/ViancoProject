<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="Css/EsIndex.css">
	<title>Login</title>
</head>

<body>
	<div class="container col-lg-3">
		<form action ="CntServlet" method="post">
			<div class="from-group text-center">
				<img src="https://vianco.uaemex.mx/wp-content/uploads/2020/05/Vianco-logo.png" height="100" width="150" />
				<p><strong>Bienvenidos a viancoLab formatos</strong></p>
			</div>
			<div class="form-group">
				<label>Correo:</label>
				<input class="form-control" type="email" name="email" placeholder="Ingrese su numero de cuenta">
			</div>

			<div class="form-group">
				<label>Ingrese su contrase&ntilde;a:</label>
				<input type="password" name="contrasenia" placeholder="No. cuenta" class="form-control">
	
			</div>
			<input class="btn btn-danger btn-block" type="submit" name="accion" value="Iniciar Sesion">
			<div class="form-group">
				<label> ¿No tienes cuenta? <br> Ingresa como invitado</label>
			</div>
			<input class="btn btn-danger btn-block" type="submit" 
		formaction="MenuInvitados.jsp" name="Invitado" value="Invitado">
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>