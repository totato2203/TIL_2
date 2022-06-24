<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.*"
    errorPage="z01_errorPage.jsp"%>
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
<%--
2022-06-24
[1단계:개념] 1. <jsp:include>, <jsp:forward>  <%@ include file=""> 의 차이점을 예제를 통해 설명하세요.
	1-1. include : 다른 jsp 페이지의 실행결과를 현재 페이지에 삽입한다.
	1-2. forward : 하나의 jsp 페이지에서 다른 jsp 페이지로 요청 전달할 때 사용된다.
	1-3. include 디렉티브 : 모든 jsp 페이지에서 사용되는 변수를 지정한다.
--%>
<h2>1-1. jsp:include</h2>
<jsp:include page="HW0624_include.jsp">
	<jsp:param name="name" value="사과"/>
	<jsp:param name="price" value="3000"/>
	<jsp:param name="cnt" value="2"/>
</jsp:include>

<br>
<h2>1-2. jsp:forward</h2>
<%
	String rank = request.getParameter("rank");
	String page01 = "";
	
	if(rank != null && !rank.equals("")){
		request.setAttribute("id", "jangho");
		if(rank.equals("vip")){
			page01 = "HW0624_forward1.jsp";
		}else{
			page01 = "HW0624_forward2.jsp";
		}
	}
%>
<%if(rank != null && !rank.equals("")) {%>
<jsp:forward page="<%=page01 %>"/>
<%} %>
<h2>백화점 회원 로그인</h2>
<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="name">아이디</label>
		</div>
		<div class="col-75">
			<input type="text" name="id" placeholder="아이디를 입력하세요"/>
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="name">등급</label>
		</div>
		<div class="col-75">
			<select name="rank">
				<option value="vip">VIP 고객</option>
				<option value="normal">일반 고객</option>
			</select>
		</div>
	</div>
	<div class="row">
		<input type="submit" value="검색">
	</div>
	</form>
</div>

<br>
<h2>1-3. </h2>
<%@ include file="HW0624_includeDirective.jsp" %>
<h3>나이 : <%=age %></h3>
<h3>번호 : <%=number %></h3>
<%--
[1단계:개념] 2. jsp에서 에러를 처리하는 방식이 두가지이다. 해당 처리방식의 차이점을 기술하세요
	1. 한 페이지에서 난 에러를 특정한 에러 페이지를 지정하여 처리하는 방법
	2. 서버 전체에서 난 에러를 일일이 에러 페이지를 지정하지 않고 모두 한 에러 페이지로 지정하여 처리하는 방법
	
	
[1단계:확인] 3. 현재 서버에서 경로나 페이지명을 잘 못 입력했을 때, 나타나는 이미지와 함께 있는 페이지를 설정할려고 한다.
             해당 내용을 처리하는 순서와 함께 처리하세요.
             	경로나 페이지를 잘못 입력했을 때에 발생하는 에러는 404 에러이다.
--%>
<br>
<h2>3.</h2>
<a href="unknown.jsp">404 Error 발생</a>


<%--
[1단계:개념] 4. 쿠키와 세션의 궁극적인 차이점을 기본 예제를 통해서 기술하세요.
쿠키 : 클라이언트(PC)에 저장, Text 형식, 기간 만료 시 삭제
세션 : 접속중인 웹 서버에 저장, Object 형식, 브라우저를 닫으면 삭제
--%>

</body>
</html>