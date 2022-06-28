<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
# jstl
1. jsp(standard tag library) 널리 사용되는 커스텀 태그를 표준으로 만든 태그 라이브러리
2. jstl의 태그 종류
	1) 코어 : 변수 지원, 흐름 제어, url 처리
		c : http://java.sun.com/jsp/jstl/core
	2) fmt : 국제화 지역 메세지 형식, 숫자 및 날짜 형식
		http://java.sum.com/jsp/jstl/fmt
	3) xml : xml 코어, 흐름제어, xml 변환
	4) fn : 함수, 콜렉션, string 처리
	5) sql : 데이터베이스 sql
3. 환경 설정
	jstl 관련 lib 설정 WEB-INF lib 밑에 
	상단 taglib
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sum.com/jsp/jstl/fmt" %>
4. 기본 형식
	<c:set var="변수명" value="데이터" scope="세션범위"/>
	${변수명}
--%>
<body>
<c:set var="name" value="홍길동" scope="request"/>
<c:set var="age" value="25" scope="request"/>
<c:set var="loc" value="서울 방배동" scope="request"/>
<h2>이름 : ${name }</h2>
<h2>나이 : ${age }</h2>
<h2>사는 곳 : ${loc }</h2>

</body>
</html>