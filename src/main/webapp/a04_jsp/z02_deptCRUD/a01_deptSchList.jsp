<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.*"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/a00_com\a01_common.css" rel="stylesheet">
<script type="text/javascript">
	function goInsertPage(){
		location.href="a02_deptInsert.jsp";
	}
</script>
</head>
<body>
<h2>부서정보</h2>
<%
String dname = request.getParameter("dname");
String loc = request.getParameter("loc");
if(dname == null) dname = ""; // 초기화면에 전체 검색처리, null에 대해서는 공백 처리
if(loc == null) loc = ""; // 초기화면에 전체 검색처리, null에 대해서는 공백 처리9
log("부서명 : " + dname); // log : console 창에서 데이터 확인
log("부서위치 : " + loc);
%>
<form>
	부서명 : <input type="text" name="dname" value="<%=dname%>"/><br>
	위치 : <input type="text" name="loc" value="<%=loc%>"/><br>
	<input type="button" id="regBtn" value="등록"
		onclick="goInsertPage()"/>
	<input type="submit" value="검색"/><br>
</form>

<%
// 부서명과 부서위치로 검색되게 처리하세요.
A04_PreDAO dao = new A04_PreDAO();
/*
for(Dept d : dao.getDeptList2(new Dept("", ""))){
	d.getDeptno();
	d.getDname();
	d.getLoc();
}
*/
/*
A04_PreDAO dao = new A04_PreDAO();
for(Dept d : dao.getDeptList2(new Dept("", ""))){
	System.out.print(d.getDeptno() + "\t");
	System.out.print(d.getDname() + "\t");
	System.out.println(d.getLoc());
}
*/
%>
<table id="customers">
	<tr><th>부서번호</th><th>부서명</th><th>위치</th></tr>
	<%for(Dept d : dao.getDeptList2(new Dept(dname, loc))){ %>
	<tr><td><%=d.getDeptno() %></td><td><%=d.getDname() %></td><td><%=d.getLoc() %></td></tr>
	<%} %>
</table>

</body>
</html>
