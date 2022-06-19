<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/a00_com/a01_common.css">
<script type="text/javascript" src="<%=path %>/a00_com/a02_comFun.js"></script>
</head>
<body>
<%--
# 공통 자원의 활용
	1. 절대 주소 지정.
		1) 프로젝트명으로 절대경로 설정
			String path = request.getContextPath();
			webprj\src\main\webapp : 서버 기반으로 기준 경로 설정
	2. 공통 css 설정
		1) 물리적으로 webprj\src\main\webapp\a00_com 하위에
			a01_common.css로 파일을 설정하고
		2) <link href="<%=path %>/a00_com/a01_common.css">
			선언하고 공통 css가 적용된다.
	3. 공통 js 설정
		<script type="text/javascript" src="<%=path%>/>
	4. 공통 img 폴드 선언
		webprj\src\main\webapp\a00_img
		<img src="<%=path%>"/a00_img/img01.jpg"/>
--%>
<h1 onclick="call()">공통 함수 호출</h1>
<div>
	<img src="<%=path %>/a00_img/img01.jpg" width="100" height="100">
	<img src="<%=path %>/a00_img/img02.jpg" width="100" height="100">
	<form>
	아이디 : <input type="text" placeholder="아이디입력">
	</form>
</div>
<form>
	<input type="submit" value="CSS 자원 주소 불러왔는지 확인"/>
</form>

</body>
</html>