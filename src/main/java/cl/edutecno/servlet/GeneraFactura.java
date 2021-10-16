package cl.edutecno.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/generaFactura")
public class GeneraFactura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public GeneraFactura() {
        super();
        
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("factura.jsp").forward(request, response);
	}

}
