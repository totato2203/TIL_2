<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String product = request.getParameter("product");
	String price = request.getParameter("price");
	// http://localhost:7080/webprj/a04_jsp/a01_start/a06_rev.jsp?product=사과&price=3000
%>
	<h2>물건명 : <%=product %></h2>
	<h2>가격 : <%=price %></h2>
</body>
</html>