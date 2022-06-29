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
		$("h1").text(" ");
	});
</script>
</head>
<body>
<%--
2022-06-28
[1단계:개념] 1. jstl 환경 설정 순서를 기술하세요
	상단에 taglib를 추가한다.
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sum.com/jsp/jstl/fmt" %>
	
[1단계:개념] 2. jstl을 통해 객체의 설정 속성과 일반 변수의 설정 속성을 기술하세요
	<c:set var="변수명" value="데이터" scope="세션범위"/>
	<c:set target="객체" property="프로퍼티명" value="데이터"/>
	
[1단계:개념] 3. jstl의 조건문과 반복문의 기본형식을 예제를 통해 기술하세요
	1. if - 조건이 true일 경우 몸체 내용 실행
	<c:if test="조건">
		처리 구문
	</c:if>
2. choose when - otherwise
	<c:choose>
		<c:when test="${조건1}">
			조건1이 true일 때 처리할 구문
		</c:when>
		<c:when test="${조건2}">
			조건1 이외에 조건2일 때 처리할 구문
		</c:when>
		<c:when test="${조건3}">
			조건1, 2 이외에 조건3일 때 처리할 구문
		</c:when>
		<c:otherwise>
			위 모든 조건 이외의 경우에 처리할 구문
		</c:otherwise>
	</c:choose>
--%>

<h2>3. </h2>
<c:if test="${param.point == 50 }">
	<h3>애매한 점수 50점</h3>
</c:if>
<c:choose>
	<c:when test="${param.point >= 90 }"><h3>천재</h3></c:when>
	<c:when test="${param.point >= 0 }"><h3>바보</h3></c:when>
	<c:otherwise><h3>점수는 0 이상의 숫자입니다.</h3></c:otherwise>
</c:choose>

<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="point">점수</label>
		</div>
		<div class="col-75">
			<input type="text" id="point" name="point" placeholder="점수 입력.." value="">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="입력">
	</div>
	</form>
</div> 

<%--
[1단계:확인] 4. 임의의 구구단 문제가 나오고 정답을 오답 여부를 jstl에 의해 출력하게 하세요
      [ @@  ] X [ @@  ] = [   ] [확인]
--%>
<h2>4. </h2>
<c:if test="${param.answer == param.ranNum01 * param.ranNum02 }">
	<h2>정답!!</h2>
</c:if>
<c:if test="${param.answer != param.ranNum01 * param.ranNum02 }">
	<h2>땡!!</h2>
</c:if>
	<form>
	<%-- <c:set var="ranNum01" value="<%=(int)(Math.random() * 8 + 2)%>"/> --%>
		<input type="text" id="ranNum01" name="ranNum01" size="1" value="<%=(int)(Math.random() * 8 + 2)%>"> X
		<input type="text" id="ranNum02" name="ranNum02" size="1" value="<%=(int)(Math.random() * 9 + 1)%>"> = 
		<input type="text" id="answer" name="answer" size="1" placeholder="정답을 입력하세요..">
		<input type="submit" value="정답 확인">
	</form>
	
<%--
[1단계:확인] 5. 회원정보리스트 dao기능 메서드를 추가하고, jstl을 통해서 검색 출력하세요.
	1) dao
		db(table ==> 데이터 입력) ==> sql ==> vo ==> dao 기능메소드 추가
	2) 화면구성
	3) 요청처리 및 조회
--%>
<h2>5. </h2>
<jsp:useBean id="dao" class="webprj.dao.A04_PreDAO"/>
<jsp:useBean id="sch" class="webprj.z01_vo.Dept"/>
<jsp:setProperty property="*" name="sch"/>
<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="dname">부서명</label>
		</div>
		<div class="col-75">
			<input type="text" id="dname" name="dname" placeholder="부서명입력.."
				value="${sch.dname }">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="loc">부서위치</label>
		</div>
		<div class="col-75">
			<input type="text" id="loc" name="loc" placeholder="부서위치입력.."
				value="${sch.loc }">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="검색">
	</div>
	</form>
</div> 
<table>
	<tr><th>no</th><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
	<c:forEach var="dept" items="${dao.getDeptList2(sch) }" varStatus="sts">
	<tr><td>${sts.count }</td><td>${dept.deptno }</td><td>${dept.dname }</td><td>${dept.loc }</td></tr>
	</c:forEach>
</table>

<h1></h1>


</body>
</html>