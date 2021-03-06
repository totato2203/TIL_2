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
#regBtn{
  width: 100%;
  background-color: blue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
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

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}
#customers tr:nth-child(even){background-color: #f2f2f2;}
#customers tr:hover {background-color: #ddd;}
#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
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
<link href="<%=path %>/a00_com/a01_common.css" rel="stylesheet">
<script type="text/javascript">
	function goInsertPage(){
		location.href="a02_deptInsert.jsp";
	}
</script>
</head>

<body>
<h2>????????????</h2>
<%
String dname = request.getParameter("dname");
String loc = request.getParameter("loc");
if(dname == null) dname = ""; // ??????????????? ?????? ????????????, null??? ???????????? ?????? ??????
if(loc == null) loc = ""; // ??????????????? ?????? ????????????, null??? ???????????? ?????? ??????9
log("????????? : " + dname); // log : console ????????? ????????? ??????
log("???????????? : " + loc);
%>
<form>
	????????? : <input type="text" name="dname" value="<%=dname%>"/><br>
	?????? : <input type="text" name="loc" value="<%=loc%>"/><br>
	<input type="button" id="regBtn" value="??????"
		onclick="goInsertPage()"/>
	<input type="submit" value="??????"/><br>
</form>

<%
// ???????????? ??????????????? ???????????? ???????????????.
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
<script>
  function goDetail(deptno){
    alert(deptno + " : ???????????? ??????");
    location.href="a03_deptDetail.jsp?deptno=" + deptno;
  }
</script>

<table id="customers">
    <tr><th>????????????</th><th>?????????</th><th>????????????</th></tr>
    <% for(Dept d:dao.getDeptList2(new Dept(dname, loc))){%>
    <tr ondblclick="goDetail(<%=d.getDeptno()%>)">
    <td><%=d.getDeptno()%></td><td><%=d.getDname()%></td><td><%=d.getLoc()%></td>
    </tr>
    <%}%>
</table>

</body>
</html>
