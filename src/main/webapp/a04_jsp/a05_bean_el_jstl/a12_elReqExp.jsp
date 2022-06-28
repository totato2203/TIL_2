<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.*"%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>
<script>
	/*
	*/
</script>
</head>
<body>
<%--
	구매할 마트명 : [   ]
	물건명	개수
	[   ]	[   ]
	[   ]	[   ]
	[   ]	[   ] [구매]
	==> 출력 처리
--%>
<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="mart">구매할 마트명</label>
		</div>
		<div class="col-75">
			<input type="text" id="mart" name="mart" placeholder="마트명" value="">
		</div>
	</div>
	<%for(int cnt = 1; cnt <= 3; cnt++){ %>
	<div class="row">
		<div class="col-25">
			<label for="prods">물건명<%=cnt %></label>
		</div>
		<div class="col-25">
			<input type="text" id="prods" name="prods" placeholder="물건명<%=cnt %>" value="">
		</div>
		<div class="col-25">
			<label for="price">물건<%=cnt %>가격</label>
		</div>
		<div class="col-25">
			<input type="text" id="price" name="price" placeholder="물건<%=cnt %>가격" value="">
		</div>
	</div>
	<%} %>
	<div class="row">
		<input type="submit" value="구매">
	</div>
	</form>
</div>

<table>
	<tr><th>마트명</th><td>${param.mart}</td></tr>
	<tr><th>물건명1</th><td>${paramValues.prods[0]}</td></tr>
	<tr><th>물건1가격</th><td>${paramValues.price[0]}</td></tr>
	<tr><th>물건명2</th><td>${paramValues.prods[1]}</td></tr>
	<tr><th>물건2가격</th><td>${paramValues.price[1]}</td></tr>
	<tr><th>물건명3</th><td>${paramValues.prods[2]}</td></tr>
	<tr><th>물건3가격</th><td>${paramValues.price[2]}</td></tr>
</table>
</body>
</html>