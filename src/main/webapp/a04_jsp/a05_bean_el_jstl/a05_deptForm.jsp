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
ex) a05_deptForm.jsp 부서정보 입력
	a06_deptBean.jsp 부서정보를 Bean으로 받아 출력 처리
--%>
<body>
<%
	String req = request.getParameter("");
%>

<div class="container">
	<form action="a06_deptBean.jsp">
	<div class="row">
		<div class="col-25">
			<label for="deptno">부서번호</label>
		</div>
		<div class="col-75">
			<input type="text" id="deptno" name="deptno" placeholder="부서번호 입력" value="">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="dname">부서명</label>
		</div>
		<div class="col-75">
			<input type="text" id="dname" name="dname" placeholder="부서명 입력" value="">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="loc">부서위치</label>
		</div>
		<div class="col-75">
			<input type="text" id="loc" name="loc" placeholder="부서위치 입력" value="">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="요청값 전달">
	</div>
	</form>
</div>
</body>
</html>