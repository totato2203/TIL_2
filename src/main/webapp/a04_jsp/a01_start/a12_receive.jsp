<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 요청값에 대한 encoding 처리
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=request.getParameter("name") %>
	<%=request.getParameter("age") %>
	
	<%
	String pname=request.getParameter("pname");
	if(pname==null) pname="";
	String priceS=request.getParameter("price");
	int price=0; if(priceS != null) price=Integer.parseInt(priceS);
	String cntS = request.getParameter("cnt");
	int cnt = 0; if(cntS != null) cnt=Integer.parseInt(cntS);
	int tot = price * cnt; %>
	<h3>물건 <%=pname %> <%=price %>원에 <%=cnt %>개 구매하여 총 비용이 <%=tot %>원 입니다.</h3>
</body>
</html>