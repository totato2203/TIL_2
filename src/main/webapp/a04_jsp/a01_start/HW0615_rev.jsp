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
	String num01S = request.getParameter("num01");
	int num01 = 0; if(num01S != null) num01 = Integer.parseInt(num01S);
	String num02S = request.getParameter("num02");
	int num02 = 0; if(num02S != null) num02 = Integer.parseInt(num02S);
	String myAnsS = request.getParameter("answer");
	int myAns = 0; if(myAnsS != null) myAns = Integer.parseInt(myAnsS);
	int corrtAns = num01 * num02;
	%>
	
	<%if(myAns == corrtAns){%>
		<h3>3. <%=num01 %> X <%=num02 %> = <%=corrtAns %>, 입력값 <%=myAns %>는 정답!</h3>
	<%}else if(myAns == 0){%>
		<h3>3. <%=num01 %> X <%=num02 %> = <%=corrtAns %>, 입력값 <%=myAns %>는 오류!</h3>
	<%}else{%>
		<h3>3. <%=num01 %> X <%=num02 %> = <%=corrtAns %>, 입력값 <%=myAns %>는 오답!</h3>
	<%}%>
</body>
</html>