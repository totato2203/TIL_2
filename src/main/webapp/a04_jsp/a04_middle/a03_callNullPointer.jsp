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
<%--
ex) z04_zeroByException.jsp (예외 처리 jsp)
		java.lang.ArithmeticException (서버에 등록할 예외 클래스)
	a04_call_Arithmetic.jsp (테스트용 jsp)
--%>
<body>
<%
	String req = request.getParameter("");
	log(req.toString());
%>
<h2></h2>

</body>
</html>