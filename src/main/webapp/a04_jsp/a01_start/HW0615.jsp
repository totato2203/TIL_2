<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단을 외자?</title>
	<style type="text/css">
		td, input{text-align:center;}
	</style>
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
	# 요청값 프로세스
	1) 초기화면 요청받은 코드 같이 로딩 기억
			- 초기화면에는 요청값을 받지 않았기 때문에 null에 대한 처리를 반드시 해야한다.
	
	1) 자바프로그램
	2) html 화면구현
	3) 스크립틀릿, 익스프레션 만들어 자바코드 추가<% %>
--%>

	<br><br>
	<h3>3. 나의 답</h3>
	<form action="HW0615_rev.jsp" method="post">
		3. <input type="text" name="num01" value="<%=(int)(Math.random() * 99 + 1)%>">
		 X <input type="text" name="num02" value="<%=(int)(Math.random() * 999 + 1)%>"> 
		 = <input type="text" name="answer">
		<input type="submit" value="확인">
	</form>

<br>
<h3>3. 해설</h3>
<%
	// 초기화면을 위한 데이터(문제 데이터)
	int gradeR = (int)(Math.random() * 8 + 2); // 2~8
	int cntR = (int)(Math.random() * 9 + 1); // 1~9
	// 요청값으로 입력된 데이터 처리	null 일 때는 0으로 설정
	int grade, cnt, reply; grade = cnt = reply = 0;
	// 모든 요청값 일단은 문자열
	String gradeS = request.getParameter("grade");
	String cntS = request.getParameter("cnt");
	String replyS = request.getParameter("reply");
	// 입력 후 요청값이 있을 때 숫자형으로 형변환 처리
	if(gradeS != null) grade = Integer.parseInt(gradeS);
	if(cntS != null) cnt = Integer.parseInt(cntS);
	if(replyS != null) reply = Integer.parseInt(replyS);
	
	System.out.println("입력값1 : " + grade);
	System.out.println("입력값2 : " + cnt);
	System.out.println("입력값3 : " + reply);
	// 정답값 저장 초기 선언
	int cor = 0;
	// 정답/오답 표기 문자열
	String result = "오답";
	// 정답여부 처리
	// 요청값이 있을 때
	if(grade != 0){
		// 임의로 낸 문제의 숫자들을 곱하여 정답값 저장
		cor = grade * cnt;
		if(reply == cor){
			result = "정답";
		}
	}
%>
	<h2 align="center">구구단을 외자!</h2>
	<form>
	<table align="center" border>
		<tr>
			<td><input type="text" name="grade" size="2" value="<%=gradeR %>"/></td>
			<td>X</td>
			<td><input type="text" name="cnt" size="2" value="<%=cntR %>"/></td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="text" size="2" name="reply"/></td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="submit" value="결과확인"/></td>
		</tr>
		<%if(grade != 0){ %>
		<tr>
			<td colspan="3">
				<%=grade %> X <%=cnt %> = <%=reply %> (<%=result %>)
			</td>
		</tr>
		<%} %>
		
	</table>
	</form>

<%--
[1단계:확인] 4. [   ][select +/-/*// ][   ] [결과확인] 결과확인을 통해 선택된 연산이 처리되게 하세요
1. 자바코드
2. 화면 UI
3. 스크립트 처리
--%>
		<br>
		<h3>4. 나의 답</h3> 
		<form action="HW0615_rev02.jsp" method="post">
		<input type="text" name="firNum">
		<select name="cal">
			<option value="+" selected> + </option>
			<option value="-"> - </option>
			<option value="*"> * </option>
			<option value="/"> / </option>
		</select>
		<input type="text" name="secNum"> = 
		<input type="submit" value="결과확인"><br>
		</form>
		
		
		<br>
		<h3>4. 해설</h3>
		<script>
			function cal(){
				var calObjVal = document.querySelector("[name=cal]").value;
				if(calObjVal==""){
					alert("연산자 중 하나를 선택해야 합니다.")
					return;
				}
				var num01Val = document.querySelector("[name=num01]").value;
				// isNaN : Is Not a Number : 숫자가 아닐 때 true, 숫자일 때 false
				if(num01Val==""){
					alert("숫자를 입력해야 합니다.")
					return;
				}
				var num02Val = document.querySelector("[name=num02]").value;
				if(num02Val==""){
					alert("숫자를 입력해야 합니다.")
					return;
				}
				var form = document.querySelector("form");
				form.submit();
			}
		</script>
		<%  // 요청값 처리
			String num01S = request.getParameter("num01");
			String num02S = request.getParameter("num02");
			String calS = request.getParameter("cal");
			int num01, num02, calIdx, sum; num01 = num02 = calIdx = sum = 0;
			String cal = "";
			// 요청값이 있을 때 처리
			if(calS != null && num01S != null && calS != null){
				num01 = Integer.parseInt("num01");
				num02 = Integer.parseInt("num02");
				calIdx = Integer.parseInt("calS");
				// 선택한 0(+), 1(-), 2(*), 3(/) 숫자로 변환
				int []sums = {num01 + num02, num01 - num02, num01 * num02,
						num01 == 0 || num02 == 0 ? 0:num01 / num02};
				String []cals = {"+", "-", "*", "/"};
				sum = sums[calIdx];
				cal = cals[calIdx];
				
				/*
				if(calIdx == 0) sum = num01 + num02; cal = "+";
				if(calIdx == 1) sum = num01 - num02; cal = "-";
				if(calIdx == 2) sum = num01 * num02; cal = "*";
				if(calIdx == 3){
					cal = "/";
					// /zero 예외 대비
					if(num01 == 0 || num02 == 0){
						sum = 0;
					}else{
						sum = num01 / num02;
					}
				}
				*/
			}
		%>
		
		<form>
			<input type="text" name="num01" size="2"/>
			<select name="cal" onchange="cal()">
				<option value=""> 연산자 선택 </option>
				<option value="0"> + </option>
				<option value="1"> - </option>
				<option value="2"> * </option>
				<option value="3"> / </option>
			</select>
			<input type="text" name="num02" size="2"/>
			<input type="submit" value="계산"/>
		</form>
		<%if (calS != null){ %>
			<%=num01 %> <%=cal %> <%=num02 %> = <%=sum %>
		<%} %>
		
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