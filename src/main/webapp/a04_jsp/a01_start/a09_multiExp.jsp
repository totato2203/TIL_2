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
?favorFood=사과&favorFood=바나나&favorFood=딸기
--%>
<%
String[] favors = request.getParameterValues("favorFood");
%>
<h2>좋아하는 과일 목록</h2>
<%if(favors != null && favors.length > 0){%>
	<%for(String favor : favors){ %>
		<h3><%=favor %></h3>
	<%} %>
<%} %>
</body>
</html>