package webprj.a02_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A05_Controller
 */
@WebServlet(name = "mvc05.do", urlPatterns = { "/mvc05.do" })
public class A05_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// http://localhost:7080/webprj/mvc05.do?pname=홍길동&record=0.275
		// 홍길동 님의 성적은 0.275 입니다.
		
		String pname = request.getParameter("pname");
		String record = request.getParameter("record");
		System.out.println("받은 요청값1 : " + pname);
		System.out.println("받은 요청값2 : " + record);
		
		A05_Model m05 = new A05_Model();
		request.setAttribute("model05", m05.getRecord(pname, record));
		// request.setAttribute("model05", pname + " 님의 점수는 " + record + " 입니다."));
		
		String page = "a04_jsp\\a06_mvc\\a05_view.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}
	

}
