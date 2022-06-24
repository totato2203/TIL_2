<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="z01_errorPage.jsp"
%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
// ex) 기본페이지 a02_error.jsp 에러가 났을 때, 페이지 z02_errorPage.jsp
//	log(1/0);
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
# 에러 페이지 처리
1. 페이지 당 에러가 발생했을 때, 에러 페이지를 지정
	1) <%@ page errorPage="로딩할에러페이지"%>
		현재 화면에서 에러가 발생했을 때 특정한 에러 페이지를 지정해서 처리하는 것을 말한다.
	2) 로딩한 에러 페이지
		<%@ page	isErrorPage="true"%>
	
2. 서버 단위로 에러 페이지 지정 처리
	1) 서버 안에 있는 모든 페이지에 대하여 에러가 발생했을 때, 에러 페이지를
		각 페이지별로 지정하지 않더라도 해당 에러를 처리하도록 처리하는 것을 말한다.
	2) 설정 방법
		- 에러 페이지 만들기
		- webapp\WEB-INF\web.xml 서버 단위 설정값 처리하기 위한 web.xml 확인
			xml에 속성 지정하기
			<error-page>
				<error-class> 반응 코드로 404 : 페이지가 존재하지 않음
				<location> 에러를 webapp 기준으로 로딩할 페이지 지정
			<error-page>
				<exception-type> 자바 컴파일 및 런타임 에러로 발생하는 클래스를 지정
				<location> 에러를 webapp 기준으로 로딩할 페이지 지정
--%>
<body>
<%
	String req = request.getParameter("");
%>
<h3></h3>
<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="dname">@@@</label>
		</div>
		<div class="col-75">
			<input type="text" id="dname" name="dname" placeholder="부서명" value="">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="검색">
	</div>
	</form>
</div>
<table>
	<tr><th></th>###<th>###</th><th>##</th></tr>
	<tr><td></td><td></td><td></td></tr>
</table>
</body>
</html>