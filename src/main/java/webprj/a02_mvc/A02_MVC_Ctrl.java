package webprj.a02_mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A02_MVC_Ctrl
 */
@WebServlet(name = "mvc02.do", urlPatterns = { "/mvc02.do" })
public class A02_MVC_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// ex) A02_MVC_Ctrl.java	mvc02.do로 호출하고
		//		second mvc!! 출력
		response.getWriter().print("second mvc!!");
	}
}
