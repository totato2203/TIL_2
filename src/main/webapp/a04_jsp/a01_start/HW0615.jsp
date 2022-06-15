<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단을 외자?</title>
</head>
<body>
<%--
2022-06-15
[1단계:확인] 1. 구매한 물건의 물건명과 가격 3개를 요청값을 받아서 합산하여 출력하세요.(형변환/전역변수)
--%>
<%
String[] pnames = request.getParameterValues("pname");
String[] prices = request.getParameterValues("price");
%>
<a href="HW0615.jsp?pname=사과&pname=바나나&pname=딸기&price=2000&price=3000&price=7000">1. 요청값 입력</a>
<%
	if(pnames != null && pnames.length > 0){
		int cnt = 0;
		for(String pname : pnames){
			cnt++;
%>
			<h2>물건<%=cnt %> 이름 : <%=pname %></h2><br>
		<%} %>
	<%} %>
<%
	if(prices != null && prices.length > 0){
		int cnt = 0;
		int sum = 0;
		for(String price : prices){
			cnt++;
%>
			<h2>물건<%=cnt %> 가격 : <%=price %></h2><br>
			<%sum += Integer.parseInt(price); %>
		<%} %>
		<h2>물건 가격의 총합 : <%=sum %></h2>
	<%} %>
<%--
[1단계:개념] 2. form과 속성 중 action, method의 기능과 이를 생략했을 때, 처리되는 내용을 기술하세요.
	action : 폼 데이터를 처리할 웹 서버 응용프로그램의 이름이다.
			submit 시 action에 지정된 웹 서버 응용프로그램을 실행 요청한다.
	method : 폼 데이터를 웹 서버로 전송하는 형식이다. 대표적인 방식 : get/post
	생략할 경우의 default로 현재 페이지를 호출했던 페이지를 다시 요청한다.

[1단계:확인] 3. 구구단을 외자? 라는 타이틀 화면으로 임의의 값이 [@@] X [@@@] ? [   ] [확인] 라는 화면이 로딩되고,
            답을 입력후, 확인 눌렀을 때, 요청된 페이지에 문제와 입력된 값을 출력,
            맞으면 정답, 틀리면 오답을 출력되게 하세요.
--%>
	<br><br>
	<form action="HW0615_rev.jsp" method="post">
		3. <input type="text" name="num01" value="<%=(int)(Math.random() * 99 + 1)%>">
		 X <input type="text" name="num02" value="<%=(int)(Math.random() * 999 + 1)%>"> 
		 = <input type="text" name="answer">
		<input type="submit" value="확인">
	</form>

<%--
[1단계:확인] 4. [   ][select +/-/*// ][   ] [결과확인] 결과확인을 통해 선택된 연산이 처리되게 하세요
--%>
		<br>
		<form action="HW0615_rev02.jsp" method="post">
		4. <input type="text" name="firNum">
		<select name="cal">
			<option value="+" selected> + </option>
			<option value="-"> - </option>
			<option value="*"> * </option>
			<option value="/"> / </option>
		</select>
		<input type="text" name="secNum"> = 
		<input type="submit" value="결과확인"><br>
		</form>
		
<%--
[1단계:개념] 5. form 하위 요소객체 중, 대표적인 단일/다중 선택을
	처리해 주는 요소들의 특징을 구별하여 예제를 통하여 설명하세요.
	select - option : select는 value를 속성으로 지정하지 않을 때는
					레이블에 있는 내용이 value로 처리되어 전달되지만
					따로 option을 활용하여 value를 지정하면 지정된 값이 전달된다.
					option은 selected를 통해 초기선택값을 설정한다.
					
	type="radio" : 여러가지 중에 선택된 것의 value값을 전송한다.
					radio는 같은 이름의 범위 안에서만 단일 선택된다.
					checked를 통해 초기선택값을 설정한다.
					
	type="checkbox" : 여러가지 중에 체크된 것들의 value값을 전송한다. 복수 선택이 가능하다.
					checked를 통해 초기선택값을 설정한다.
--%>
	<br>
	<form>
	부서 : <select name="cho01">
			<option>인사</option>
			<option value="20" selected>재무</option>
			<option value="30">회계</option>
		</select>
	<br>
	성별 : 
	<input type="radio" name="cho02" value="남" checked/>남
	<input type="radio" name="cho02" value="여"/>여
	<br>
	취미 : 
	<input type="checkbox" name="cho03" value="독서"/>독서
	<input type="checkbox" name="cho03" value="음악"/>음악
	<input type="checkbox" name="cho03" value="게임" checked/>게임
	<input type="checkbox" name="cho03" value="등산"/>등산
	<input type="checkbox" name="cho03" value="운동" checked/>운동
	<br>
	<input type="submit" value="등록"/><br><br>
</form>
	부서 : <%=request.getParameter("cho01") %><br>
	성별 : <%=request.getParameter("cho02") %><br>
	취미 : 
		<%
		String cho03[] = request.getParameterValues("cho03");
		%>
		<%if(cho03 != null){ %>
			<%for(String ch03:cho03){ %>
				<%=ch03 %> 
			<%} %>
		<%} %>
		<br>
</body>
</html>