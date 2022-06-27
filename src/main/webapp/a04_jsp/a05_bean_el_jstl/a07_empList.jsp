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
	String req = request.getParameter("");
	// ex) 사원명과 직책을 현재 페이지에서 useBean으로 호출하여 출력되게 하세요.
%>
<jsp:useBean id="emp" class="webprj.z01_vo.Emp" scope="request"/>
<jsp:setProperty property="*" name="emp"/>
<script type="text/javascript">
	<%if(emp.getEname() != null){%>	// 초기화면에서 검색 버튼 누르기 전과 구분
		alert("검색완료");
	<%} %>
</script>
<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="ename">사원명</label>
		</div>
		<div class="col-75">
			<input type="text" id="ename" name="ename" placeholder="사원명 입력.."
				value="<%=emp.getEname() != null ? emp.getEname() : "" %>"> <%-- 초기 검색 버튼 누르기 전과 구분한 3항 연산자 --%>
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="job">직책명</label>
		</div>
		<div class="col-75">
			<input type="text" id="job" name="job" placeholder="직책명 입력.."
				value="<%=emp.getJob() != null ? emp.getJob() : "" %>">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="요청값 전달">
	</div>
	</form>
</div>
<table>
	<tr><th>사원번호</th><th>사원명</th><th>직책명</th><th>급여</th><th>부서번호</th></tr>
	<%
	if(emp.getEname() != null){
		A04_PreDAO dao = new A04_PreDAO();
		for(Emp e : dao.getEmpList3(emp)){
	%>
	<tr>
		<td><%=e.getEmpno() %></td>
		<td><%=e.getEname() %></td>
		<td><%=e.getJob() %></td>
		<td><%=e.getSal() %></td>
		<td><%=e.getDeptno() %></td>
	</tr>
	<%
		}
	}
	%>
</table>
</body>
</html>