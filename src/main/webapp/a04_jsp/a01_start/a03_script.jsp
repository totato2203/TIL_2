<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
# 스크립트의 요소 3가지
1. scriptlet : 스크립트 조각 <% %>
	자바의 프로그래밍 코드를 넣는 부분
2. expression : 표현 <%= %>
3. declare : 선언 <%! %>
 --%>
<%--
# 스크립틀릿 연습예제
1. 반복문 처리
2. 조건문 처리
3. 반복문과 조건문 혼합 처리
ps) 화면단(html 코드)에서 java코드와 로직을 어떻게 처리하고
	구분하느냐의 문제
 --%>
 <%-- 반복문 1단계
 1. 코드내용 반복 처리
 	1) 반복될 태그를 기준으로 앞뒤에 for/while 구문이 들어갈
 		내용을 <% %>으로 시작과 끝을 처리한다.
 	2) 반복할 변수를 중간에 출력 : <%= %>를 활용한다.
 --%>
<%for(int cnt = 1; cnt <= 5; cnt++){ %>
<h2><%=cnt %>) 안녕하세요</h2>
<%}%>
<%--
반복문 2단계
1. 테이블 형태에 데이터 출력하기
	1) 테이블의 기본형식 만들기
	2) 반복할 범위를 확인 : tr, td
	3) for문을 통해서 처리할 데이터와 함께 expression으로 나타내기
 --%>
 <%
 	String titles[] = {"사원번호", "사원명", "직책", "급여", "부서번호"};
 %>
 <%--
 	for(String title : titles){		==> 자바 scriptlet
 		titles[]					==> expression
 	}								==> 자바 scriptlet
  --%>
 <table border>

 	<tr>
 		<%for(String title : titles){%>
 		<th><%=title %></th>
 		<%} %>
 	</tr>
 </table>
<%--
	td로 7780 홍길동 사원 3500 10이 출력되게
	문자열 배열로 선언하고 반복문을 통해서 출력되게 하세요.
--%>
<%
	String arry01[] = {"7780", "홍길동", "사원", "3500", "10"};
	ArrayList list = new ArrayList();
	list.add(7780);	// <Object> Integer autoBox(기본 ==> Wrapper) 가 생략되어 있음
	list.add("홍길동");	// Object i = new Integer();
	list.add("사원");	// Integer num = 7780;	// autobox
	list.add(3500);
	list.add(10);
%>
<table border>
	<h3>문자열 배열</h3>
	<tr>
		<%for(String ar : arry01){ %>
		<td><%=ar %></td>
		<%} %>
	</tr>
	<h3>동적 배열</h3>
	<tr>
		<%for(Object o : list){ %>	<%-- Wrapper, String은 상위 Object로 할당하더라도 --%>
		<td><%=o %></td>			<%-- 형변환 없이 출력 가능하다. --%>
		<%} %>
	</tr>
</table>
<%--
# 조건문 처리
1. 조건문에 활용할 데이터 선언
2. 조건문 형식 설정
	if(조건){
	
	}
	if(조건){
	
	}else{
	
	}
3. scriptlet 코드 부분과 expression 구분하기
	<%
	if(조건문){
	%>
		<%=조건에 출력할 내용%>
	<%
	}
	%>
 --%>
 <%-- 나이가 18세 이상이면 성인 그 외는 미성년 표기
 1. 조건문 처리
 	if(age >= 18){
 	
 	}else{
 	
 	}
 2. 처리에 따라 표시될 하면 구현
 3. 변수를 선언하고, 조건문 처리를 scriptlet에 선언하여 처리한다.
 --%>
 	<%
 	int age = 22;
 	%>
 	<% if(age >= 18){ %>
 	<h2>성인 입니다.</h2>
 	<% }else{ %>
 	<h2>미성년 입니다.</h2>
 	<% } %>
  <%--
  ex) 점수에 따라 평점으로 A~F까지 <h1>선택적으로 출력되게 하세요.
   --%>
   <%--
	if(grade >= 90){
		A
	}else if(grade >= 80){
		B
	}else if(grade >= 70){
		C
	}else if(grade >= 60){
		D
	}else{
		F
	}
	--%>
	<% int grade = 75;%>
	<% if(grade >= 90){%>
	<h1><%=grade %>점의 평점은 A입니다.</h1>
	<% }else if(grade >= 80){%>
	<h1><%=grade %>점의 평점은 B입니다.</h1>
	<% }else if(grade >= 70){%>
	<h1><%=grade %>점의 평점은 C입니다.</h1>
	<% }else if(grade >= 60){%>
	<h1><%=grade %>점의 평점은 D입니다.</h1>
	<% }else{%>
	<h1><%=grade %>점의 평점은 F입니다.</h1>
	<% }%>
<%--
# 조건문과 반복문 혼합예제
1. 배열로 점수를 표시하고, 점수에 따라 합격/불합격, 배경색상 파랑/빨강
	1) java 기본 코드 선언
		int[]ptArry = {70, 80, 90, 60, 85};
		for(int pt : ptArry){
			if(pt >= 80){
				합격 blue
			}else{
				불합격 red
			}
		}
	2) 기본 출력 화면 구현
	3) <% %>, <%= %> 표기
	4) 기본 코드 스크립트릿에 추가하기
 --%>
 	<%int[]ptArry = {70, 80, 90, 60, 85}; %>
 	<%for(int pt : ptArry){ %>
 		<%if(pt >= 80){ %>
	 	<h2 style="background-color:blue;color:yellow;"><%=pt %>점으로 합격</h2>
	 	<%}else{ %>
	 	<h2 style="background-color:red;color:yellow;"><%=pt %>점으로 불합격</h2>
	 	<%} %>
 	<%} %>	
 <%--
 	ex) 회원 권한을 문자열로 관리자/일반사용자/방문객으로 나누어
 		회원 5명을 권한 배열로 선언하고, 권한에 따라 글자색상을
 		관리자는 파랑색, 일반사용자는 녹색, 방문객은 오렌지색으로
 		권한과 함께 표시하세요. 테이블 tr/td에 넣어서 표시
 
	String[]authArry = {"관리자", "방문객", "일반사용자", "관리자", "일반사용자"};
	for(String ath : authArry){
		if(ath.equals("관리자")){
		
		}else if(ath.equals("방문객")){
		
		}else if(ath.equals("일반사용자")){
		
		}
	}
--%>

<%String[]authArry = {"관리자", "방문객", "일반사용자", "관리자", "일반사용자"}; %>
<table border>
<%for(int idx = 0; idx < authArry.length; idx++){ %>
	<tr><th>no</th><th>권한</th></tr>
	<tr>
	<%if(authArry[idx].equals("관리자")){ %>
		<td style = "color : blue"><%=idx + 1%></td><td><%=authArry[idx] %></td>
	<%}else if(authArry[idx].equals("방문객")){ %>
		<td style = "color : blue"><%=idx + 1%></td><td><%=authArry[idx] %></td>
	<%}else if(authArry[idx].equals("일반사용자")){ %>
		<td style = "color : blue"><%=idx + 1%></td><td><%=authArry[idx] %></td>
	<%} %>
	</tr>
<%} %>

</table>


</body>
</html>