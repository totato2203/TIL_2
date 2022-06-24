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
<h2>java.lang.ArithmeticException 예외 발생 했습니다.</h2>

<table>
	<tr><th></th><td></th></tr>
	<tr><th></th><td></td><td></td></tr>
</table>
</body>
</html>