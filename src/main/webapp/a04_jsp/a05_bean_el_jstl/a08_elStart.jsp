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
# Expression Language
1. jsp에서 사용 가능한 새로운 스크립트 언어
2. el의 주요 기능
	- jsp의 네 가지 기본 객체가 제공하는 영역의 속성 사용
	- 집합 객체에 대한 접근 방법 제공
	- 수치 연산, 관계 연산, 논리 연산자 제공
	- 자바 클래스 메소드 호출 기능 제공
	- 표현 언어만의 기본 객체 제공
3. 간단한 구분 때문에 표현식 대신 사용
--%>
<body>
<%
	pageContext.setAttribute("num01", 25);
	pageContext.setAttribute("num02", 25);
	request.setAttribute("name", "홍길동");

	request.setAttribute("pname", "사과");
	request.setAttribute("price", 2000);
	request.setAttribute("cnt", 3);
	
	/*
	ex) request 객체로 물건명 가격 개수를 변수로 선언하고 데이터를 할당한 후 화면에서 출력하세요.
	*/
%>

<h2>el 활용</h2>

<table>
	<tr><th>num01</th><td>${num01}</td></tr>
	<tr><th>num02</th><td>${num02}</td></tr>
	<tr><th>num01 + num02</th><td>${num01 + num02}</td></tr>
	<tr><th>물건명</th><td>${pname}</td></tr>
	<tr><th>물건가격</th><td>${price}</td></tr>
	<tr><th>물건개수</th><td>${cnt}</td></tr>
</table>
</body>
</html>