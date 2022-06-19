<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
   String id = request.getParameter("id");
   if(id == null) id = "";
   String pw = request.getParameter("pw");
   if(pw == null) pw = "";
   if(id.equals("himan") && pw.equals("7777")){%>
      <h3>
      입력한 ID : <%=id %><br>
      입력한 PW : <%=pw %><br>
      로그인 성공!</h3>
   <%}else{%>
      <h3>
      입력한 ID : <%=id %><br>
      입력한 PW : <%=pw %><br>
      로그인 실패!</h3>
   <%} %>
</body>
</html>