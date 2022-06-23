<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
[1단계:개념] 12. jsp의 구성요소에 대하여 기술하세요.
	1. 웹 브라우저
	2. 웹 서버
	3. 어플리케이션 서버
	4. 데이터베이스
	
		웹 브라우저에서 url로 주소와 경로를 요청하면, 넘겨온 html 내용을 웹 서버에서 출력한다.
		어플리케이션 서버(jsp ==> java ==> class)에 의해 class의 객체가 만들어지고,
		DB를 처리하고, java를 컴파일 하여 만든 최종 html을 다시 웹 브라우저에 전달한다.
		
		
[1단계:확인] 13. jsp의 scriptlet과 expression을 활용하여 구구단의 2단~9단까지 테이블 td안에 넣어 출력하세요.(이중 for문 활용)
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
13.
<<<<<<< HEAD

<table border>
	<%for(int i = 2; i <= 9; i++){%>
	<tr>
		<%for(int j = 0; j <= 9; j++){%>
			<%if(j == 0){%>
				<th><%=i %>단</th>
			<%}else{ %>
				<td><%=i %> * <%=j %> = <%=i * j %></td>
			<%}%>
		<%}%>
	</tr>
	<%}%>
</table>

	
=======
	<%
	for(int i = 2; i <= 9; i++){%>
		<%
		for(int j = 1; j <= 9; j++){%>
			<h4><%=i %> * <%=j %> = <%=i * j %></h4>
		<%
		}
		%>
		<br>
	<%
	}
	%>
>>>>>>> aa842315e9f2e615ad1a2fe09a46141807e87766
</body>
</html>