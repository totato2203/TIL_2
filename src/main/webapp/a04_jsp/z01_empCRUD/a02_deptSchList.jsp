<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.Dept"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>부서정보</h2>
<form>
	사원명 : <input type="text" name="dname" value=""/><br>
	직책명 : <input type="text" name="loc" value=""/><br>
	<input type="submit" value="검색"/><br>
</form>
<%
A04_PreDAO dao = new A04_PreDAO();
/*
for(Dept d : dao.getDeptList2(new Dept("", ""))){
	e.getDeptno();
	e.getDname();
	e.getLoc();

}
*/
%>
<table>
	<tr><th>부서번호</th><th>부서명</th><th>위치</th></tr>
	<%for(Dept d : dao.getDeptList2(new Dept("", ""))){ %>
	<tr><td><%=d.getDeptno() %></td><td><%=d.getDname() %></td><td><%=d.getLoc() %></td></tr>
	<%} %>
</table>

</body>
</html>
