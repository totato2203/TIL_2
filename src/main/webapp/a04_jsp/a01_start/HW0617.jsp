<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 1. 절대 경로 지정 --%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- 1. 공통 css 절대 경로 설정 --%>
<link href="<%=path %>/a00_com/a01_common.css">
<%-- 1. 공통 js 절대 경로 설정 --%>
<script type="text/javascript" src="<%=path %>/a00_com/a02_comFun.js"></script>
</head>
<body>

<%--
2022-06-17
[1단계:개념] 1. css, js, img의 절대 경로와 상대 경로를 설정하는 방법을 기본 예제를 통해 설명하세요.
--%>
<h1 onclick="call()">공통 함수 호출</h1>
<div>
	<%-- 공통 img 폴드 선언 --%>
	<img src="<%=path %>/a00_img/img01.jpg" width="100" height="100">
	<img src="<%=path %>/a00_img/img01.jpg" width="100" height="100">
	<form>
	아이디 : <input type="text" placeholder="아이디입력">
	</form>	<%-- 브라우저 캐시 문제 때문에 css 적용 안 됨 --%>
</div>


<%--
[1단계:개념] 2. a link 태그의 속성에 대하여, 설명하되 iframe과 연동처리를 위한 처리를 기본예제로 기술하세요.
		href : 입력된 경로로 통하는 링크
		target : 입력된 곳으로 링크를 호출함
--%>
<a href="a20_menu04.jsp" target="frame01">About</a>
<iframe name="frame01" width="100%" height="100%"></iframe>


<%--
[1단계:개념] 3. json 객체의 속성과 메서드에 대하여 기술하세요.
	1. 프로퍼티 : 객체의 고유한 속성(변수) - name : "홍길동", age : 25 등은 프로퍼티
	2. 메소드 : 함수 - func01 : function() {~} 는 메소드이다.
--%>


<%--
[1단계:확인] 4. [jsp] 4개 중 단일 선택하는 객관식 퀴즈 문제를 form요소 객체와 함께 만들어, 
      정답여부를 다음 페이지에서 출력하세요.
--%>
<form action="HW0617_rev.jsp">
<br><br>
	4번 문제. 2 + 2 * 2 = ?
	<input type="radio" name="option" value="1"/> 1. 2
	<input type="radio" name="option" value="2"/> 2. 4
	<input type="radio" name="option" value="3"/> 3. 6
	<input type="radio" name="option" value="4"/> 4. 8<br>
	<input type="submit" value="제출"/>
</form>


<%--
[1단계:확인] 5. [jsp] 1~99임의의 수를 생성하는 덧셈문제 10문제를 출력하고 각 문제당 답을
      입력시, 정답인 수와 점수(0~100)을 출력하세요.
      1  [@@] + [@@] = [   ]
      2  [@@] + [@@] = [   ]
      3  [@@] + [@@] = [   ]
         ..
      10 [@@] + [@@] = [   ]
              [확인]
--%>

<form>
<br>
<br>
<h2>5번 문제.</h2>
<%for(int cnt = 1; cnt <= 10; cnt++){ %>
	<%=cnt %>. <input type="text" name="front" value="<%=(int)(Math.random() * 99 + 1)%>">
		 + <input type="text" name="back" value="<%=(int)(Math.random() * 99 + 1)%>"> 
		 = <input type="text" name="answer">
		 <br>
		 <%}%>
	<input type="submit" value="확인"/>
</form>
	<%
		String front[] = request.getParameterValues("front");
		String back[] = request.getParameterValues("back");
		String answer[] = request.getParameterValues("answer");
		
		
		%>
</body>
</html>