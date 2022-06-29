package webprj.a02_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webprj.z01_vo.Dept;

/**
 * Servlet implementation class A07_DeptController
 */
@WebServlet(name = "deptlist.do", urlPatterns = { "/deptlist.do" })
public class A07_DeptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A07_DeptService service;
	
	

	public A07_DeptController() {
		super();
		// TODO Auto-generated constructor stub
		service = new A07_DeptService();
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String dname = request.getParameter("dname");
		String loc = request.getParameter("loc");
		
		request.setAttribute("deptlist", service.getDeptList2(new Dept(dname, loc)));
		String page = "a04_jsp\\a06_mvc\\a07_deptList.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
