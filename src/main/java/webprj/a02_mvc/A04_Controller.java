package webprj.a02_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A04_Controller
 */
@WebServlet(name = "mvc04.do", urlPatterns = { "/mvc04.do" })
public class A04_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 1. 요청값 : http://localhost:7080/webprj/mvc04.do?pname=사과&price=2000&cnt=2;
		String pname = request.getParameter("pname");
		String price = request.getParameter("price");
		String cnt = request.getParameter("cnt");
		System.out.println("받은 요청값1 : " + pname);
		System.out.println("받은 요청값2 : " + price);
		System.out.println("받은 요청값3 : " + cnt);
		
		// 2. 모델 객체
		A04_Model m04 = new A04_Model();
		request.setAttribute("model04", m04.getProduct(pname, price, cnt));
		
		// 3. view 호출
		String page = "a04_jsp\\a06_mvc\\a04_view.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
