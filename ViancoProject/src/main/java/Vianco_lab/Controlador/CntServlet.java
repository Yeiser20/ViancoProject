package Vianco_lab.Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

import Vianco_lab.Conexion.Conexion;
import Vianco_lab.Formatos.TercerFormato;
import Vianco_lab.Usuario.User;
import Vianco_lab.Usuario.UserDAOimp;


/**
 * Servlet implementation class CntServlet
 */
public class CntServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Conexion con = new Conexion();
	User us = new User();
	UserDAOimp usdao = new UserDAOimp();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CntServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF=8");
		String accion = request.getParameter("accion");
		System.out.println(accion);
		if(accion.equals("Iniciar Sesion")) {
			usdao.setCon(con.conectar());
		    String correo="";
		    String nombre="";
		    try{
				String email = request.getParameter("email");
				String contrasenia = request.getParameter("contrasenia");
				us.setCorreo(email);
				us = usdao.consultar(us);
				if(email.equals(us.getCorreo())) {
					if(contrasenia.equals(us.getContrasena())) {
						System.out.println("inicio correcto");
						 correo = request.getParameter("email");
		    			 nombre = us.getNombrec();
		    			 request.getSession().setAttribute("nombres", nombre);
		    			 request.getSession().setAttribute("correo", correo);
		    			 request.getRequestDispatcher("/MenuCuentas.jsp").forward(request, response);
					}else{request.getRequestDispatcher("/index.jsp").forward(request, response);
				}
					}		
		    }catch (Exception e) {
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
		    
		}
		if (accion.equals("principal")) {
			System.out.println("si entro a ingresar");
			request.getRequestDispatcher("/MenuCuenta/MenuCuentas.jsp").forward(request, response);
		}
		if (accion.equals("Calcular")) {
			System.out.println("si entro a Calcular");
			request.getRequestDispatcher("/DocsCalculados/Doc3EvCalculado.jsp").forward(request, response);
		}
		if (accion.equals("Modificar")) {
			System.out.println("si entro a Calcular");
			request.getRequestDispatcher("/DocsCalculados/Doc3EvCalculado.jsp").forward(request, response);
		}
		
		if(accion.equals("Descargar PDF")) {
			response.setContentType("aplication/pdf");
			OutputStream out = response.getOutputStream();
			System.out.println("imprimir");
			String anio=request.getParameter("año");
			String mes=request.getParameter("mes");
			String dia=request.getParameter("dia");
    		String nomEV = request.getParameter("nomEV");     	
			String c1 = request.getParameter("dTesis");    
			String c2 = request.getParameter("CodTesis");     	
			String c3 = request.getParameter("Tutor");     	
			String nomAL = request.getParameter("NombreAl");     	
			String 	proy = request.getParameter("NombreP");     	
			String cal1= request.getParameter("cal1");
			String cal2=request.getParameter("cal2");
			String cal3=request.getParameter("cal3");
			String cal4=request.getParameter("cal4");
			String cal5=request.getParameter("cal5");
			String cal6=request.getParameter("cal6");
			String cal7=request.getParameter("cal7");
			String cal8=request.getParameter("cal8");
			String cal9=request.getParameter("cal9");
			String cal10=request.getParameter("cal10");
			String totaltotal = request.getParameter("calificacion");
			String obs=request.getParameter("observaciones");
            System.out.println(dia+mes+anio+nomEV+c1+nomAL+proy+cal1+cal2+cal3+cal4+cal5+cal6+cal7+cal8+cal9+cal10+totaltotal+obs);
            
            TercerFormato tf = new TercerFormato(out);
            
            System.out.println("se creo el objeto");
            tf.crearPdf(dia, mes, anio, nomEV, c1,c2,c3, nomAL, proy,cal1, cal2, cal3, cal4, cal5, cal6, cal7, cal8, cal9, cal10,totaltotal,obs);	
			System.out.println("imprimiendo");
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
