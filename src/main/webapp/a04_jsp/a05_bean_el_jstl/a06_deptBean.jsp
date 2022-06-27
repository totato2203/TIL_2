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
<h2>bean으로 요청값 받기</h2>
<jsp:useBean id="dept" class="webprj.z01_vo.Dept" scope="session"/>
<jsp:setProperty property="*" name="dept"/>
<%--
요청값과 같은 형식의 property가 있으면 자동으로 할당
?deptno=10&dname=인사&loc=서울
property="*" 로 선언하면
setDeptno(), setDname(), setLoc() : 요청key의 이름과 할당할 수 있는 type이 일치하면
자동으로 set프로퍼티 메소드를 호출하여 처리하고 저장한다.

<jsp:setProperty property="deptno" name="dept"/>
<jsp:setProperty property="dname" name="dept"/>
<jsp:setProperty property="loc" name="dept"/>
--%>
<%if(dept.getDname() != null){ %>
<table>
	<tr><th>부서번호</th><td><%=dept.getDeptno() %></td></tr>
	<tr><th>부서명</th><td><%=dept.getDname() %></td></tr>
	<tr><th>부서위치</th><td><%=dept.getLoc() %></td></tr>
</table>
<%} %>
</body>
</html>