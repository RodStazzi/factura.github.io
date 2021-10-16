package cl.edutecno.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/procesaFactura")
public class ProcesaFactura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ProcesaFactura() {
        super();
        
    }

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String nombre, empresa, rut, direccion, ciudad, pais;
		Integer cantidadValvula, cantidadTurbo, cantidadFreno, cantidadRefrigeracion, cantidadPlumillas;
	
		//recibiendo los valores del objeto request que han sido enviados en el input
		nombre = request.getParameter("nombre");
		empresa = request.getParameter("empresa");
		rut = request.getParameter("rut");
		direccion = request.getParameter("direccion");
		ciudad = request.getParameter("ciudad");
		pais = request.getParameter("pais");
		
		System.out.printf("Recibiendo valores %s %s %s %s %s\n",nombre, empresa, rut, direccion, ciudad, pais);
		
		//valores estaticos
		int precioValvulas = 120000;
		int precioTurbo = 1700000;
		int precioFreno = 760000;
		int precioRefrigerante = 2300000;
		int precioPlumas = 10000;
		
		cantidadValvula = Integer.parseInt(request.getParameter("valvulas") );
        cantidadTurbo = Integer.parseInt(request.getParameter("turbo")) ;
        cantidadFreno = Integer.parseInt(request.getParameter("frenos")) ;
        cantidadRefrigeracion = Integer.parseInt(request.getParameter("refri")) ;
        cantidadPlumillas = Integer.parseInt(request.getParameter("plumas")) ;
        
        //asignar valores al request para recibirlos en otro servlet.
        request.setAttribute("cantidadValvula", cantidadValvula);
        request.setAttribute("cantidadTurbo", cantidadTurbo);
        request.setAttribute("cantidadFreno", cantidadFreno);
        request.setAttribute("cantidadRefrigeracion", cantidadRefrigeracion);
        request.setAttribute("cantidadPlumillas", cantidadPlumillas);
		
		//asignarlos al request para poder recibirlos en otro servlet o vista
		request.setAttribute("nombre", nombre);
		request.setAttribute("empresa", empresa);
		request.setAttribute("direccion", direccion);
		request.setAttribute("rut", rut);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);
		
		request.setAttribute("precioTotalValvulas", cantidadValvula * precioValvulas);
		request.setAttribute("precioTotalTurbo", cantidadTurbo * precioTurbo);
		request.setAttribute("precioTotalFreno", cantidadFreno * precioFreno);
		request.setAttribute("precioTotalRefrigeracion", cantidadRefrigeracion * precioRefrigerante);
		request.setAttribute("precioTotalPlumillas", cantidadPlumillas * precioPlumas);
		
		int valorTotal = ((cantidadValvula * precioValvulas)+
							(cantidadTurbo * precioTurbo)+
							(cantidadFreno * precioFreno)+
							(cantidadRefrigeracion * precioRefrigerante)+
							(cantidadPlumillas * precioPlumas));
		
		request.setAttribute("valorTotal", valorTotal);
		
		request.getRequestDispatcher("/generaFactura").forward(request, response);
	}

}
