<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.*"%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>
<script>
	/*
	*/
</script>
</head>
<body>
<%
	String req = request.getParameter("");
%>

<table>
	<tr><th>페이지 범위 데이터</th><td><%=pageContext.getAttribute("page01") %></td></tr>
	<tr><th>request 범위 데이터</th><td><%=request.getAttribute("request02") %></td></tr>
	
	<%--
	<a href="이동페이지"
	location.href="이동페이지"
	response.sendRedirect("이동페이지")
	--%>
	
	<tr><th>session 범위 데이터</th><td><%=session.getAttribute("session03") %></td></tr>
	
	<%--
	서버가 켜졌을 때, restart인 경우 사라진다.
	--%>
	
	<tr><th>application 범위 데이터</th><td><%=application.getAttribute("application04") %></td></tr>
</table>
</body>
</html>