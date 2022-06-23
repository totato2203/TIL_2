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
2022-06-23
[1단계:확인] 1. jsp의 기본 객체 out를 활용하여, 구매물건과 가격 갯수를 입력 받아      
      총비용(가격X개수)에 따라 MVP VIP 보통고객으로 분류하여 출력되게 하세요.
--%>
<%
	String req = request.getParameter("");

	String pname = request.getParameter("pname"); if(pname == null) pname = "";
	String priceS = request.getParameter("price");
	String cntS = request.getParameter("cnt");
	int price = 0;
	int cnt = 0;
	if(priceS != null && !priceS.trim().equals("")
			&& cntS != null && !cntS.trim().equals("")){
		price = Integer.parseInt(priceS);
		cnt = Integer.parseInt(cntS);
		int tot = price * cnt;
		if(tot >= 100000){
			out.println("<h4>구매물건 : " + pname
					+ "</h4><h4>구매가격 : " + price
					+ "</h4><h4>구매개수 : " + cnt
					+ "</h4><h2>MVP 고객</h2>");
		}else if(tot >= 50000){
			out.println("<h4>구매물건 : " + pname
					+ "</h4><h4>구매가격 : " + price
					+ "</h4><h4>구매개수 : " + cnt
					+ "</h4><h2>VIP 고객</h2>");
		}else{
			out.println("<h4>구매물건 : " + pname
					+ "</h4><h4>구매가격 : " + price
					+ "</h4><h4>구매개수 : " + cnt
					+ "</h4><h2>보통 고객</h2>");
		}
	}
%>

<div class="container">
<h2>1. </h2>
	<form>
	<div class="row">
		<div class="col-25">
			<label for="pname">구매물건</label>
		</div>
		<div class="col-75">
			<input type="text" id="pname" name="pname" placeholder="구매물건을 입력" value="">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="price">구매가격</label>
		</div>
		<div class="col-75">
			<input type="text" id="price" name="price" placeholder="구매가격을 입력" value="">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="cnt">구매개수</label>
		</div>
		<div class="col-75">
			<input type="text" id="cnt" name="cnt" placeholder="구매개수을 입력" value="">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="등급 출력">
	</div>
	</form>
</div>


<%--
[1단계:개념] 2. session scope의 범위를 4가지를 기본 예제와 함께 기술하세요.
	1) pageContext : 하나의 페이지를 처리할 때 사용되는 영역
	2) request : 하나의 HTTP 요청을 처리할 때 사용되는 영역
	3) session : 하나의 웹 브라우저와 관련된 영역(하나의 브라우저를 모두 닫아야지 종료됨, 한 브라우저에만 처리됨)
	4) application : 하나의 웹 어플리케이션과 관련된 영역(여러 브라우저 모두에 다 처리됨, 서버를 재시작해야 종료됨)
--%>
<%
	pageContext.setAttribute("page01", "페이지범위 데이터(page scope)");
	request.setAttribute("request02", "request범위 데이터(request scope)");
	session.setAttribute("session03", "session범위 데이터(session scope)");
	application.setAttribute("application04", "application범위 데이터(application scope)");
	req = request.getParameter("req");
	if(req != null && req.equals("Y")){
		request.getRequestDispatcher("HW0623_requestScope.jsp").forward(request, response);
	}
%>
<h2>2. </h2>
<table>
	<tr><th>페이지 범위 데이터</th><td><%=pageContext.getAttribute("page01") %></td></tr>
	<tr><th>request 범위 데이터</th><td><%=request.getAttribute("request02") %></td></tr>
	<tr><th>session 범위 데이터</th><td><%=session.getAttribute("session03") %></td></tr>
	<tr><th>application 범위 데이터</th><td><%=application.getAttribute("application04") %></td></tr>
</table>

<div class="container">
	<form><input type="hidden" name="req" value="Y"/></form>
	<div class="row">
		<input type="button" value="request범위확인" onclick="goRequest()">
		<input type="button" value="session범위확인" onclick="goSession()">
	</div>
</div>
<script type="text/javascript">
	function goSession(){
		location.href="HW0623_sessionScope.jsp";
	}
	function goRequest(){
		document.querySelector("form").submit();
	}
</script>


<%--
[1단계:확인] 3. id/pass을 입력해서 himan/7777이면 request범위로 설정하여 main.jsp에서
      @@@ 님 로그인이라고 표시하세요.
--%>
<h2>3. </h2>
<jsp:include page="main.jsp"/>


<%--
[1단계:확인] 4. include 지시자를 이용해서 top main 으로 하나의 페이지에 두개의 페이지가 포함되게하세요.
--%>
<h2>4. </h2>
<jsp:include page="main.jsp"/>
<jsp:include page="HW0623_requestScope.jsp"/>

</body>
</html>