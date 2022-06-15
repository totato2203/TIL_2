<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
ex) 아래와 같은 내용을 처리하는 form 하위 요소객체와 전송된 결과값까지 출력하세요.
	회원등록
성별 : ()남 ()여
추천인 : 1.[   ], 2.[   ], 3.[   ]
취미 : []독서 []음악 []게임 []등산 []운동
	[등록] ==> 등록 버튼 입력 시
성별 @@@, 추천인 @@, @@, @@, 취미 @@ @@
--%>
<form>
	성별 : 
	<input type="radio" name="cho01" value="남"/>남
	<input type="radio" name="cho01" value="여"/>여
	<br>
	추천인 : 
	1. <input type="text" name="cho02"/>
	2. <input type="text" name="cho02"/>
	3. <input type="text" name="cho02"/>
	<br>
	취미 : 
	<input type="checkbox" name="cho03" value="독서"/>독서
	<input type="checkbox" name="cho03" value="음악"/>음악
	<input type="checkbox" name="cho03" value="게임"/>게임
	<input type="checkbox" name="cho03" value="등산"/>등산
	<input type="checkbox" name="cho03" value="운동"/>운동
	<br>
		
	<input type="submit" value="등록"/>
</form>
<%
String cho01 = request.getParameter("cho01"); if(cho01 == null) cho01 = "";
String cho02[] = request.getParameterValues("cho02");
if(cho02 == null) cho02 = new String[]{"", "", ""};
%>
성별 : <%=cho01 %><br>
추천인 : <%=cho02[0] %> <%=cho02[1] %> <%=cho02[2] %><br>
<%
String[] cho03 = request.getParameterValues("cho03"); // 선택된 내용만 출력
%>
취미 : 
<%if(cho03 != null){ %>
	<%for(String hb : cho03){ %>
		<%=hb %>
	<%} %>
<%} %>

</body>
</html>