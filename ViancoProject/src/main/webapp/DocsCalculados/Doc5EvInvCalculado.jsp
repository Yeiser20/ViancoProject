<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Css/StyleDoc.css">
<link rel="stylesheet" href="Css/MenuStyle.css" type="text/css">
</head>
<body>
    <%@include file="../Header/headerDocC.jsp"%> 
    <%@ page import="java.util.Calendar"%>
<%!Calendar cal =Calendar.getInstance();%>
<% 
						
				int anio=cal.get(Calendar.YEAR);
				int mes=cal.get(Calendar.MONTH)+1;
				int dia=cal.get(Calendar.DAY_OF_MONTH);
        		String nomEV = request.getParameter("nomEV");     	
				String c1 = request.getParameter("Dtesis");     	
				String c2 = request.getParameter("CodTesis");     	
				String c3 = request.getParameter("Tutores");     	
				String nomAL = request.getParameter("nombreAl");     	
				String 	proy = request.getParameter("NombreP");  
				String 	observ = request.getParameter("observaciones"); 
				
				double cal1= Double.parseDouble(request.getParameter("cal1"));
                double cal2=Double.parseDouble(request.getParameter("cal2"));
                double cal3=Double.parseDouble(request.getParameter("cal3"));
                double cal4=Double.parseDouble(request.getParameter("cal4"));
                double cal5=Double.parseDouble(request.getParameter("cal5"));
                double cal6=Double.parseDouble(request.getParameter("cal6"));
                double cal7=Double.parseDouble(request.getParameter("cal7"));
                double cal8=Double.parseDouble(request.getParameter("cal8"));
                
             double total1 = ((cal1 +cal2+cal3+cal4+cal8)*70)/40;
             double total2 = ((cal5+cal6+cal7)*30)/60;
             double totaltota = (total1+total2)/10; 
             String totaltotal=String.format("%.2f", totaltota); 
             %>
	<div class="Doc">
	<h1>
		DOCTORADO EN CIENCIAS DE LA INGENIERÍA <br> FACULTAD DE
		INGENIERÍA
	</h1>
	<p class="p1">
		Formato de evaluación <br>Actividades de Evaluacion 5to semestre
	</p>
	<br>
	<form action="CntServlet" class="Documento">
		<div class="Texto">
			<label>NOMBRE DEL EVALUADOR <input value="<%=nomEV %>" readonly name="nomEV" type="text" size="50" placeholder="Ingresa el nombre del evaluador"></label>
        <p>ASIGNACIÓN DENTRO DEL COMITÉ TUTORAL: DIRECTOR DE TESIS (<input type="text" size="2" readonly placeholder="valor" id="dTesis" name="dTesis" value="<%=c1 %>"> )
        <br>
        CODIRECTOR DE TESIS ( <input type="text" size="2" placeholder="valor" readonly id="CTesis" name="CodTesis" value="<%=c2 %>">) TUTORES ( <input readonly size="2" type="text" placeholder="valor"  value="<%=c3 %>" id="tutor" name="Tutor">)</p>
        <label>NOMBRE DEL ALUMNO<input value="<%= nomAL %>" type="text" size="50" readonly name="NombreAl" id="NombreAl" placeholder="ingresa el nombre del alumno"></label>
        <br> <br>
        <label>TITULO DEL PROYECTO <input type="text" size="50" name="NombreP" readonly id="NombreP" placeholder="ingresa el nombre del proyecto" value="<%=proy %>"></label>
 		<br> <br>
        <p class="parrafo1">I. Trabajo Escrito (70%). Se califica forma, fondo e integración de los primeros capítulos<br>
             y su capítulo de avance, del trabajo escrito de tesis.</p>
		</div>
		<br>
		<table class="tabla">
			<tr>
				<th>Puntos a Evaluar</th>
				<th>Calificacion (1-10)</th>
			</tr>
			<tr>
				<td>Introducción (parte del protocolo) </td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal1" readonly value="<%=cal2%>">
				</td>
			</tr>
			<tr>
				<td>Estado del Arte </td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal2" readonly value="<%=cal2%>">
				</td>
			</tr>
			<tr>
				<td>Marco Teórico </td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal3" readonly value="<%=cal3%>">
				</td>
			</tr>
			<tr>
				<td>Propuesta (Modelos, Teorias y <br>
                    Conceptos) <br>
				</td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal4" readonly value="<%=cal4%>">
				</td>
			</tr>
			<tr>
				<td>Resultados
				</td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal8" readonly value="<%=cal8%>">
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
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal5" readonly value="<%=cal5%>">
				</td>
			</tr>
			<tr>
				<td>Avances: propuestas</td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal6" readonly value="<%=cal6%>">
				</td>
			</tr>
			<tr>
				<td>Resultados</td>
				<td><input required="" type="number" step="0.1" min="0" max="10" placeholder="Calificacion" name="cal7" readonly value="<%=cal7%>">
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
		
		    <br>
        <textarea  class="area" name="observaciones" id="observaciones" cols="100" rows="10"><%=observ%></textarea>
		<br>
       <p>El alumno deberá tener un avance entre el 45% y el 55% de su investigación, que <br>
                 corresponde a los 4 primeros capítulos de su tesis.</p> <br>
        <p>CALIFICACION ASIGNADA (ESCALA DE 0 A 10): <input type="text" readonly id="calificacion" name="calificacion" value="<%=totaltotal%>" ></p>
<br>
        <p>Toluca, Mexico a <input  value="<%=dia%>" type="text" name="dia" readonly size="5" id="dia"> de <input value="<%=mes%>" type="text" readonly size="5" name="mes" id="mes">  <input value="<%=anio%>" readonly type="text" size="5" name="año" id="año"></p>
        <br> <br>
        
        <div class="botones">
        <input type="submit" class="boton" value="Descargar PDF">  
		<input class="boton" type="submit" name="accion" value="Modificar">
		
        </div>

	</form>
</div>

</body>
</html>ml>