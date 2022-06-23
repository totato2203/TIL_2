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
<%
	String id = request.getParameter("id"); if(id == null) id = "";
	String pw = request.getParameter("pw"); if(pw == null) pw = "";
	if(id != null && !id.trim().equals("")
			&& pw != null && !pw.trim().equals("")){
		if(id.equals("himan") && pw.equals("7777")){
			out.println("<h2>" + id + "님 로그인 성공!!</h2>");
		}else{
			out.println("<h2>로그인 실패!!</h2>");
		}
	}
%>
<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="id">ID</label>
		</div>
		<div class="col-75">
			<input type="text" id="id" name="id" placeholder="ID를 입력">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="pw">PW</label>
		</div>
		<div class="col-75">
			<input type="text" id="pw" name="pw" placeholder="PW를 입력">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="로그인">
	</div>
	</form>
</div>
</body>
</html>