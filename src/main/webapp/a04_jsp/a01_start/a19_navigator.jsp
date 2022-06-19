<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  margin: 0;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #04AA6D;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>
</head>
<body>
<%
String path = request.getContextPath();
%>

<ul>
  <!-- 절대적 경로로 link -->
  <li><a href="<%=path %>/a04_jsp/a01_start/a20_menu01.jsp" target="frame01">Home</a></li>
  <!-- 상대적 경로로 link -->
  <li><a class="active" href="a20_menu02.jsp" target="frame01">News</a></li>
  <li><a href="a20_menu03.jsp" target="frame01">Contact</a></li>
  <li><a href="a20_menu04.jsp" target="frame01">About</a></li>
</ul>

<div style="margin-left:25%;padding:1px 16px;height:1000px;">
<iframe name="frame01" width="100%" height="100%"></iframe>

</div>
<script type="text/javascript">
	var linkArry = document.querySelectorAll("a");
	for(var idx = 0; idx < linkArry.length; idx++){
		linkArry[idx].onclick=function(){
			this.class = "active"
		}
	}
</script>
</body>
</html>