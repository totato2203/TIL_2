<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="webprj.dao.*"
	import="webprj.z01_vo.*"
	import="java.util.*"    
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
		$("h3").text("HW0629.jsp");
	});
</script>
</head>
<body>
<h3></h3>
<%--
2022-06-29
[1단계:개념] 1. jstl의 날짜와 숫자 형식 처리의 기본 형식을 기술하세요.
	1-1. 날짜 처리 기본 형식 : 
		<fmt:formatDate type = "date|time|both"
			dateStyle="full|short"
			timeStyle="full|short"
			pattern="yyyy/MM/dd kk:mm:ss.S"
			value="선언된 날짜형 데이터"/>
	1-2. 숫자 처리 기본 형식 : 
		<fmt:formatNumber value="${숫자 }"
			currencySymbol="원"
			pattern="00,000,000"/>

[1단계:확인] 2. 회원별로 구매한 물건이 다수개일 때, 아래 형식으로 출력해보세요
         forEach, forTokens 활용
         (Buyer)VO객체 필드 :String name; String plist;
         List<Buyer> blist = new ArrayList<Buyer>();
         blist.add(new Buyer("홍길동","사과&바나나&딸기");
         blist.add(new Buyer("신길동","오렌지&수박");
         blist.add(new Buyer("오길동","딸기&바나나");
         # 출력 #
      홍길동 : 사과, 바나나, 딸기
      신길동 : 오렌지, 수박
      오길동 : 딸기 바나나
--%>
<h1>2. </h1>
<%
	List<Buyer> blist = new ArrayList<Buyer>();
	blist.add(new Buyer("홍길동","사과&바나나&딸기"));
	blist.add(new Buyer("신길동","오렌지&수박"));
	blist.add(new Buyer("오길동","딸기&바나나"));
	request.setAttribute("blists", blist);
%>
<c:forEach var="buyer" items="${blists }">
	<h2>
	${buyer.name} : 
		<c:forTokens var="product" items="${buyer.plist }" delims="&" varStatus="sts">
			${product }
			<c:if test="${not sts.last }">, </c:if>
		</c:forTokens>
		<br>
	</h2>
</c:forEach>

<%--
[1단계:개념] 3. mvc패턴의 각 model, view, controller 역할을 기술하세요.
	- Model : 비즈니스 영역의 상태 정보를 처리하고 dao의 데이터를 가져온다.
	- View : 비즈니스 영역에 대한 프리젠테이션 뷰를 담당한다
		 jsp로 처리하고 모델로 설정한 데이터를 el이나 jstl로 처리한다.
	- Controller : 사용자의 입력 및 흐름 제어를 담당한다.

[1단계:개념] 4. mvc패턴으로 부서정보의 조회 내용을 출력하세요.
--%>


</body>
</html>