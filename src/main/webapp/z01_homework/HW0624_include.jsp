<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.*"%>
<%
request.setCharacterEncoding("utf-8");
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
<table>
	<tr><th>이름</th><td><%=request.getParameter("name") %></td></tr>
	<tr><th>가격</th><td><%=request.getParameter("price") %></td></tr>
	<tr><th>개수</th><td><%=request.getParameter("cnt") %></td></tr>
</table>
</body>
</html>