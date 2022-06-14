<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
2022-06-14
[1단계:개념] 1. 특정한 화면에서 스크립트릿과 익스프레션에 대한 자바 처리의 코드 순서를 기본예제로 기술해보세요.
--%>
 <%
 	String emps[] = {"사원번호", "사원명", "직책", "급여", "부서번호"};
 %>
 <table border>
 	<tr>
 		<%for(String emp : emps){%>
 		<th><%=emp %></th>
 		<%} %>
 	</tr>
 </table>
<%--
[1단계:확인] 2. 영문으로 배열을 무지개색상을 지정하고, 7가지 h3 코드에 무지개명과 배경색이 출력되게 하세요.
for(String rb : rainbow){
<h3 style=backgroundColor:"<%=rb%>">색 : <%=rb%></h3>
}
--%>
<%
	String rainbow[] = {"red", "orange", "yellow", "green", "blue", "indigo", "violet"};
%>
<%for(String rb : rainbow){ %>
<h3 style="background-Color:<%=rb%>;">색 : <%=rb%></h3>

<%} %>


<%--
[1단계:확인] 3. 아래와 같이 두팀의 주사위게임(1~6임의) 10회의 결과를 테이블로 출력하세요.
      no  홍팀   백팀  결과
      1    5   6   홍팀승
      2    5   6   홍팀승
      3    5   5   무승부
      ...
      10   5   1   백팀승
            	(int)(Math.random() * 6 + 1)
--%>
	<table border>
	<%for(int cnt = 0; cnt <= 10; cnt++){%>
	<%if(cnt == 0){ %>
	<tr><td>no	</td><td>홍팀	</td><td>백팀	</td><td>결과</td></tr>
	<%}else{ %>
      	<%
      	int redDice = (int)(Math.random() * 6 + 1);
      	int whiteDice = (int)(Math.random() * 6 + 1);
      	%>
		<tr><td><%=cnt%>	</td><td><%=redDice%>	</td><td><%=whiteDice%>	</td>
		<td><%if(redDice > whiteDice){%>
			홍팀승
			<%}else if(redDice < whiteDice){%>
			백팀승
			<%}else{%>
			무승부
			<%}%></tr>
		<%}%>
	<%}%>
	</table>


<%--
[1단계:개념] 4. jsp에서 특정페이지에 데이터 전송 형식(요청값)을 기술하세요
--%>
<%
	String num01 = request.getParameter("num01");
	String num02 = request.getParameter("num02");
%>
	<h2>요청값1 : <%=num01 %></h2>
	<h2>요청값2 : <%=num02 %></h2>
<%--
	http://localhost:7080/webprj/a04_jsp/a01_start/HW0614.jsp?num01=1000&num02=10
		특정페이지주소?요청key1=요청값1&요청key2=요청값2
--%>

<%--
[1단계:확인] 5. 학생명과 국어,영어,수학점수를 전송하고 이름과 점수를 받은 요청값을 처리하세요.
      조건문과 형변환 함수를 이용하여 합산과 평균을 출력하세요.
 --%>
<%
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
%>
	<%if(kor==null&&eng==null&&math==null){ %>
		<%
		kor = "0";
		eng = "0";
		math = "0";
		%>
	<%}else{ %>
	<h2>국어점수 : <%=kor %></h2>
	<h2>영어점수 : <%=eng %></h2>
	<h2>수학점수 : <%=math %></h2>
	<%} %>
<%
	int sum = Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math);
	double avg = sum / 3;
%>
	<h2>합산 : <%=sum%></h2>
	<h2>평균 : <%=avg%></h2>
	
	<a href="http://localhost:7080/webprj/a04_jsp/a01_start/HW0614.jsp?kor=80&eng=75&math=90">국영수 점수 입력!</a>

</body>
</html>