<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>  
    <title>Formato Evaluacion</title>
    <link rel="stylesheet" href="Css/StyleDoc.css" type="text/css">
	<link rel="stylesheet" href="Css/MenuStyle.css" type="text/css">
</head>
<body>
<%@include file="../Header/headerInv.jsp"%>

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
				
				double cal1= Double.parseDouble(request.getParameter("cal1"));
                double cal2=Double.parseDouble(request.getParameter("cal2"));
                double cal3=Double.parseDouble(request.getParameter("cal3"));
                double cal4=Double.parseDouble(request.getParameter("cal4"));
                double cal5=Double.parseDouble(request.getParameter("cal5"));
                double cal6=Double.parseDouble(request.getParameter("cal6"));
                double cal7=Double.parseDouble(request.getParameter("cal7"));
                double cal8=Double.parseDouble(request.getParameter("cal8"));
                double cal9=Double.parseDouble(request.getParameter("cal9"));
                double cal10=Double.parseDouble(request.getParameter("cal10"));
                
             double total1 = ((cal1 +cal2+cal3+cal4)*70)/40;
             double total2 = ((cal5+cal6+cal7+cal8+cal9+cal10)*30)/60;
             double totaltota = (total1+total2)/10; 
             String totaltotal=String.format("%.2f", totaltota); 
             %>
	<div class="Doc">
    <form action="CntServlet" class="Documento">
        <h1>DOCTORADO EN CIENCIAS DE LA INGENIERÍA <br> FACULTAD DE INGENIERÍA</h1>
        <p class="p1">Formato de evaluación <br>Actividades de Evaluacion 3er semestre </p>
        <br>

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
                <td>Introducción (parte del protocolo) capítulo I</td>
                
           
               <tr>
                <td>Introducción (parte del protocolo) capítulo I</td>
                <td><input type="text" value="<%=cal1 %>" readonly name="cal1"> </td>
              
            </tr>
            
            <tr>
                <td>Estado del Arte – capítulo II</td>
                <td><input type="text" placeholder="Calificacion" readonly name="cal2" value="<%=cal2%>"> </td>
            </tr>
            <tr>
                <td>Marco Teórico – capítulo II</td>
                <td><input type="text" placeholder="Calificacion" readonly name="cal3" value="<%=cal3%>"> </td>
            </tr>
            <tr>
                <td>Tabla comparativa entre el Plan de Trabajo <br>
                    semestral y las actividades realizadas (Reporte de <br>
                    Trabajo semestral)</td>
                <td><input type="text" placeholder="Calificacion" readonly name="cal4" value="<%=cal4%>"> </td>
            </tr>
            
        </table>    
        <br>
        <p>
            II. Presentación Oral (30%). Se califica la presentación y el dominio de lo presentado <br> (Ver rúbrica de evaluación presentación oral).
        </p>
        <table class="tabla">
            <tr>
                <th>Puntos a Evaluar</th>
                <th>Calificacion (1-10)</th>
            </tr>
            <tr>
                <td>Introducción</td>
                <td><input type="text" placeholder="Calificacion"  readonly name="cal5" value="<%=cal5%>"> </td>
            </tr>
            <tr>
                <td>Marco Teorico</td>
                <td><input type="text" placeholder="Calificacion" readonly name="cal6" value="<%=cal6%>"> </td>
            </tr>
            <tr>
                <td>Avances: propuestas</td>
                <td><input type="text" placeholder="Calificacion" readonly name="cal7" value="<%=cal7%>"> </td>
            </tr>
            <tr>
                <td>Resultados Inmediatos</td>
                <td><input type="text" placeholder="Calificacion" readonly name="cal8" value="<%=cal8%>"> </td>
                    
            </tr>
            <tr>
                <td>Comparativo entre el Plan de <br>

                    Trabajo semestral y las <br>
                    
                    actividades realizadas (Reporte <br>
                    
                    de Trabajo semestral)</td>
                <td><input type="text" placeholder="Calificacion" readonly name="cal9" value="<%=cal9%>"> </td>
                    
            </tr>
            
            <tr>
                <td>Comparativo entre cronograma <br>
                    inicial y actividades realizadas</td>
                <td><input type="text" placeholder="Calificacion" readonly name="cal10" value="<%=cal10%>"> </td>
                    
            </tr>
     
        </table>    
        <br>
       <p>El alumno deberá tener un avance entre el 45% y el 55% de su investigación, que <br>
                 corresponde a los 4 primeros capítulos de su tesis.</p> <br>
        <p>CALIFICACION ASIGNADA (ESCALA DE 0 A 10): <input type="text" readonly id="calificacion" name="calificacion" value="<%=totaltotal%>" ></p>
<br>
        <p>Toluca, Mexico a <input  value="<%=dia%>" type="text" name="dia" readonly size="5" id="dia"> de <input value="<%=mes%>" type="text" readonly size="5" name="mes" id="mes">  <input value="<%=anio%>" readonly type="text" size="5" name="año" id="año"></p>
        <br> <br>
        <p class="p1">___________________</p>
        <p class="p1">Firma</p>
        <div class="botones">
        <input type="submit" name="accion" class="boton" value="Descargar PDF">  
		<input class="boton" type="submit" formaction="MenuInv/Doc3EvInv.jsp" name="accion" value="Modificar3">
        </div>
    </form>
    </div>
</body>
</html>