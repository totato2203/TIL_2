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
		String firNumS = request.getParameter("firNum");
		String cal = request.getParameter("cal");
		String secNumS = request.getParameter("secNum");
		int firNum = 0; if(firNumS != null) firNum = Integer.parseInt(firNumS);
		int secNum = 1; if(secNumS != null) secNum = Integer.parseInt(secNumS);
		if(cal.equals("+")){%>
		<h3>4. <%=firNum %> <%=cal %> <%=secNum %> = <%=firNum + secNum %></h3>
		<%}else if(cal.equals("-")){%>
		<h3>4. <%=firNum %> <%=cal %> <%=secNum %> = <%=firNum - secNum %></h3>
		<%}else if(cal.equals("*")){%>
		<h3>4. <%=firNum %> <%=cal %> <%=secNum %> = <%=firNum * secNum %></h3>
		<%}else if(cal.equals("/")){%>
		<h3>4. <%=firNum %> <%=cal %> <%=secNum %> = <%=firNum / secNum %></h3>
		<%}else{%>
		<h3>4. 오류 발생</h3>
		<%}%>
</body>
</html>