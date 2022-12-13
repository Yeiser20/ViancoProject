package Vianco_lab.Controlador;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;

import Vianco_lab.Conexion.Conexion;
import Vianco_lab.Modelo.clases.Persona;
import Vianco_lab.ModeloDao.persona.PersonaDaoImp;

/**
 * Servlet implementation class AltaPersonas
 */
public class AltaPersonas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String accion = request.getParameter("accion");
		if (accion.equals("Enviar Formulario")) {
			System.out.println("entre al formulario");
		 	PersonaDaoImp imp = new PersonaDaoImp();
		 	Persona per= new Persona();		
			String nom = request.getParameter("Nombre");
			String apm = request.getParameter("apellidoM");
			String app = request.getParameter("apellidoP");
			String fnac = request.getParameter("fechaNac");
			String genero = request.getParameter("Genero");
			String pais = request.getParameter("Pais");
			String Estado = request.getParameter("Estado");
			String Delegacion = request.getParameter("Delegacion");
			String colonia = request.getParameter("Colonia");
			String calle = request.getParameter("Calle");
			String next = request.getParameter("nExt");
			String nint = request.getParameter("nInt");
			String cp = request.getParameter("cp");
			String ec = request.getParameter("EdoCivil");
			String correo = request.getParameter("EmailPersonal");
			String curp = request.getParameter("Curp");
			String nacionalidad = request.getParameter("Nacionalidad");
			String firma = request.getParameter("Firma");
			per.setNombre(nom);
			per.setPrimerApellido(app);
			per.setSegundoApellido(apm);
			per.setFechaNac(fnac);
			per.setGenero(genero);
			per.setId_pais(Integer.parseInt(pais));
			per.setId_estado(Integer.parseInt(Estado));
			per.setId_delegacion(Integer.parseInt(Delegacion));
			per.setId_colonia(Integer.parseInt(colonia));
			per.setId_Calle(Integer.parseInt(calle));
			per.setNumeroext(Integer.parseInt(next));
			per.setNumeroInt(Integer.parseInt(nint));
			per.setCp(Integer.parseInt(cp));
			per.setEdoCivil(ec);
			per.setEmail_personal(correo);
			per.setNacionalidad(nacionalidad);
			per.setCurpString(curp);
			per.setFirma(firma);
			System.out.println("sali del formulario");
			imp.crear(per);
			
			request.getRequestDispatcher("/Principal1.jsp").forward(request, response);
			
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
