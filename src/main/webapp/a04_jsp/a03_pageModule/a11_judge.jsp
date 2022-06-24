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
<%--
a11_judge.jsp?isPass=합격
a11_judge.jsp?isPass=불합격
위 요청값이 합격/불합격에 따라 jsp:forward로 결정되어 처리되게 하세요.
a12_pass.jsp
a13_fail.jsp
--%>
<body>
<%
	String req = request.getParameter("");
	String test = request.getParameter("test");
	String name = request.getParameter("name");
	String page01 = "";
	// a11_judge.jsp?test=pass
	// a11_judge.jsp?test=fail
	
	if(test != null && !test.equals("")){
		request.setAttribute("name", name);
		if(test.equals("pass")){
			page01 = "a12_pass.jsp";
		}else{
			page01 = "a13_fail.jsp";
		}
	}
%>
<%if(test != null && !test.equals("")) {%>
<jsp:forward page="<%=page01 %>"/>
<%} %>
<h2>합격 여부</h2>
<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="isPass">이름</label>
		</div>
		<div class="col-75">
			<input type="text" name="name" placeholder="이름을 입력하세요"/>
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="isPass">TEST</label>
		</div>
		<div class="col-75">
			<select name="test">
				<option value="pass">통과</option>
				<option value="normal">탈락</option>
			</select>
		</div>
	</div>
	<div class="row">
		<input type="submit" value="검색">
	</div>
	</form>
</div>
</body>
</html>