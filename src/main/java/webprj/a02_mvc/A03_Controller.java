package webprj.a02_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A03_Controller
 */
@WebServlet(name = "mvc03.do", urlPatterns = { "/mvc03.do" })
public class A03_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// http://localhost:7080/webprj/mvc03.do?name=%ED%99%8D%EA%B8%B8%EB%8F%99
		// mvc03.do ==> urlPatterns = {"/mvc03.do"}
		//		위 상단에 선언된 대로 servlet을 호출한다.
		// ?name=홍길동 ==> String name = request.getParameter("name");
		//		name값에 홍길동이 할당
		// 1. 요청값 처리
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		System.out.println("받은 요청값1 : " + name);
		// ?name=홍길동&age=25
		System.out.println("받은 요청값2 : " + age);
		// 2. 모델 객체 생성 및 데이터 처리
		A03_Model m = new A03_Model();
		request.setAttribute("model01",  m.getModelData(name));
		// 모델명을 model02라고 하고 나이 + 요청
		request.setAttribute("model02", "나이 : " + age);
		// 3. view단 호출
		String viewPage = "a04_jsp\\a06_mvc\\a03_view.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}

}
