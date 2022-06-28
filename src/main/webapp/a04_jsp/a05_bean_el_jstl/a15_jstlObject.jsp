<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="webprj.dao.*"
	import="webprj.z01_vo.*"    
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

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
# jstl 객체 사용
1. 객체 선언
2. 프로퍼티로 변경
	<c:set target="객체" property="프로퍼티명" value="데이터"/>
3. 변수 삭제
	<c:remove var="변수명" scope="영역"/>
--%>
<h1>jstl 객체 사용</h1>
<c:set var="emp" value="<%=new Emp() %>"/>	<%-- Emp emp = new Emp() --%>
<c:set target="${emp }" property="ename" value="홍길동"/>
<%-- emp.getEname("홍길동") --%>
<h2>이름 : ${emp.ename }</h2>
<%-- emp.getEname() --%>

<%-- exp) Dept로 선언하고 property로 부서번호, 부서명, 부서위치 선언 출력 --%>
<c:set var="dept" value="<%=new Dept() %>"/>
<c:set target="${dept }" property="deptno" value="77"/>
<c:set target="${dept }" property="dname" value="농땡이부서"/>
<c:set target="${dept }" property="loc" value="집 앞"/>
<h2>부서번호 : ${dept.deptno }</h2>
<h2>부서명 : ${dept.dname }</h2>
<h2>부서위치 : ${dept.loc }</h2>

<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="dname">@@@</label>
		</div>
		<div class="col-75">
			<input type="text" id="dname" name="dname" placeholder="부서명입력.." value="">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="검색">
	</div>
	</form>
</div> 
<table>
	<tr><th>#</th><td>#</td><td>#</td></tr>
	<tr><td>#</td><td>#</td><td>#</td></tr>
</table>
</body>
</html>