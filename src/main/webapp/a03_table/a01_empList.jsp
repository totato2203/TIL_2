<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="webprj.dao.A04_PreDAO" 
	import="webprj.z01_vo.Emp" 
	import="java.util.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: Center;
  border-bottom: 1px solid #DDD;
}
th{ background-color:MediumSeaGreen;}
tr:nth-child(even){background-color: #f2f2f2;}
tr:hover {background-color: #D6EEEE;}
</style>

</head>
<body>
<%
	A04_PreDAO dao = new A04_PreDAO();
	// 입력한 내용을 서버에서 받는 부분
	String ename = request.getParameter("ename");
	if(ename==null) ename="";
	String job = request.getParameter("job");
	if(job==null) job="";
	
	
%>
<h2 align="center"> 사원 정보 </h2>

<form>
  <label for="fname">사원명:</label><br>
  <input type="text" id="fname" name="ename" value="<%=ename%>"><br>
  <label for="lname">직책명:</label><br>
  <input type="text" id="lname" name="job" value="<%=job%>"><br><br>
  <input type="submit" value="검색">
</form> 

<table align="center">
  <tr>
	<th>사원번호</th>
	<th>사원명</th>
	<th>직책</th>
	<th>관리자번호</th>
	<th>급여</th>
	<th>보너스</th>
	<th>부서번호</th>
  </tr>
  <%
  Map<String, String> sch = new HashMap<String, String>();
  sch.put("ename", ename);
  sch.put("job", job);
  for(Emp e : dao.getEmpList(sch)){
  %>
  <tr>
    <td><%=e.getEmpno() %></td>
    <td><%=e.getEname() %></td>
    <td><%=e.getJob() %></td>
    <td><%=e.getMgr() %></td>
    <td><%=e.getSal() %></td>
    <td><%=e.getComm() %></td>
    <td><%=e.getDeptno() %></td>
  </tr>
  <%
  }
  %>
  <tr>
</table>

</body>
</html>
