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
# 자바빈
1. 웹 프로그래밍에서 데이터의 표현을 목적으로 사용한다.
2. 일반적인 구성
	- 값을 저장하기 위한 필드
	- 값을 수정하기 위한 setter
	- 값을 읽기 위한 getter
3. 프로퍼티
	1) 자바빈에 저장되어 있는 값을 표현
	2) 메소드 이름을 사용해서 프로퍼티의 이름을 결정
	3) 규칙 : 프로퍼티 이름이 "프로퍼티명"일 경우
		setter : public void set프로퍼티명(타입)
		getter : public 타입 get프로퍼티명()
		boolean : getter에 get대신 is 사용 가능
		배열 지정 가능 : public void setNames(String [])
	4) 읽기/쓰기
		읽기 전용 : get 또는 is 메소드만 존재하는 프로퍼티
		읽기/쓰기 : get/set 또는 is/set 메소드가 존재하는 프로퍼티
4. 기본 형식
	1) jsp에서 자바빈 객체를 생성할 때 사용한다.
	2) <jsp:useBean id="빈이름" class="자바패키지.클래스명" scope="범위"/>
		id : jsp 페이지에서 자바빈 객체에 접근할 때 사용할 이름
		class : 패키지 이름을 포함한 자바빈 클래스의 완전한 이름
		scope : 자바빈 객체가 저장될 영역을 지정 page, request, session, application 중
			하나를 값으로 갖는다.
--%>
<body>
<jsp:useBean id="dept" class="webprj.z01_vo.Dept" scope="session"/>
<jsp:useBean id="emp" class="webprj.z01_vo.Emp" scope="session"/>
<%-- 값을 저장하지 않더라도 session 범위로 저장된 데이터가 나타난다.--%>

<h2>useBean 확인(session 범위)</h2>
<table>
	<tr><th>부서번호</th><td><%=dept.getDeptno() %></td></tr>
	<tr><th>부서이름</th><td><%=dept.getDname() %></td></tr>
	<tr><th>부서위치</th><td><%=dept.getLoc() %></td></tr>
</table>
<table>
	<tr><th>사원번호</th><td><%=emp.getEmpno() %></td></tr>
	<tr><th>사원명</th><td><%=emp.getEname() %></td></tr>
	<tr><th>부서번호</th><td><%=emp.getDeptno() %></td></tr>
</table>

</body>
</html>