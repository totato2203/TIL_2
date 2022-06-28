<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<script>
	/*
	*/
	$(document).ready(function(){
		$("h1").text("시작!");
	});
</script>
</head>
<body>
<%--
	a14_jstlSetting.jsp jstl 환경설정 후,
	물건명, 가격, 개수를 설정하고, 물건명, 가격, 개수 총계 출력
--%>
<h1></h1>
<c:set var="pname" value="사과" scope="request"/>
<c:set var="price" value="2000" scope="request"/>
<c:set var="cnt" value="3" scope="request"/>
<h2>물건명 : ${pname }</h2>
<h2>가격 : ${price }</h2>
<h2>개수 : ${cnt }</h2>
</body>
</html>