<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Formato Evaluacion</title>
	<link rel="stylesheet" href="../Css/StyleDoc.css">
	<link rel="stylesheet" href="../Css/MenuStyle.css" type="text/css">
</head>
<body>
<%@include file="../Header/headerDocInv.jsp"%>
	<div class="Doc">
	<h1>
		DOCTORADO EN CIENCIAS DE LA INGENIERÍA <br> FACULTAD DE
		INGENIERÍA
	</h1>
	<p class="p1">
		Formato de evaluación <br>Actividades de Evaluacion 5to semestre
	</p>
	<br>
	<form action="../Doc5" class="Documento">
		<div class="Texto">
			<label class="eval">NOMBRE DEL EVALUADOR <input required="" class="Evaluador" type="text" size="50"
				placeholder="Ingresa el nombre del evaluador" name="nomEV"></label>
			<br><br>
                <p>
				ASIGNACIÓN DENTRO DEL COMITÉ TUTORAL: DIRECTOR DE TESIS (
				<select name="Dtesis" id="Dtesis">
                <option value="si">Si</option>
                <option value="no">No</option>
            </select>
				) CODIRECTOR DE TESIS ( <select name="CodTesis" id="CodTesis">
                <option value="si">Si</option>
                <option value="no">No</option>
            </select>
            ) TUTORES (<select name="Tutores" id="Tutores">
                <option value="si">Si</option>
                <option value="no">No</option>
            </select> )
			</p>
            <br>
            <label required="" class="eval">NOMBRE DEL ALUMNO <input class="nombreL" type="text" size="50"
				placeholder="Ingresa el nombre del Alumno" name="nombreAl"></label>
                <br>
			<label required="" class="titu">TITULO DEL PROYECTO <input class="Proyec" type="text" size="50"
				name="NombreP" id="NombreP"
				placeholder="ingresa el nombre del proyecto"></label> <br> <br>
			<p class="parrafo1">
				I. Trabajo Escrito (70%). Se califica forma, fondo e integración del capitulado del trabajo de tesis
			</p>
		</div>
		<br>
		<table class="tabla">
			<tr>
				<th>Puntos a Evaluar</th>
				<th>Calificacion (1-10)</th>
			</tr>
			<tr>
				<td>Introducción (parte del protocolo) </td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal1">
				</td>
			</tr>
			<tr>
				<td>Estado del Arte </td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal2">
				</td>
			</tr>
			<tr>
				<td>Marco Teórico </td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal3">
				</td>
			</tr>
			<tr>
				<td>Propuesta (Modelos, Teorias y <br>
                    Conceptos) <br>
				</td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal4">
				</td>
			</tr>
			<tr>
				<td>Resultados
				</td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal8">
				</td>
			</tr>

		</table>
		<br>
		<p>
			II. Presentación Oral (30%). Se califica la presentación y el dominio
			de lo presentado <br> <br>
		</p>
		<table class="tabla">
			<tr>
				<th>Puntos a Evaluar</th>
				<th>Calificacion (1-10)</th>
			</tr>
			<tr>
				<td>Introducción</td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal5">
				</td>
			</tr>
			<tr>
				<td>Avances: propuestas</td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal6">
				</td>
			</tr>
			<tr>
				<td>Resultados</td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal7">
				</td>
			</tr>
		</table>
        <br>
		<p>
			III. Constancia de envío del artículo a revista indizada (10%). El alumno deberá
             presentar la constancia y el índice de la revista. <br><br>
            El alumno debera tener un avance y el indice de la revista. <br><br>
		</p>
            <h3>Si tiene observaciones igreselas en el campo siguiente:</h3>
		

		

		<textarea  class="area" placeholder="Area de Observaciones" name="observaciones" id="observaciones" cols="100" rows="10"></textarea>
		<br>
		<div class="botones">
		<input type="submit" class="botons" name="accion5" value="Calcular">
		    </div>
	</form>
</div>

</body>
</html>