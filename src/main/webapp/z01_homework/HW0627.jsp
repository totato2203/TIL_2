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
2022-06-27
[1단계:개념] 1. useBean 태그 의 기본 속성과 하위 속성을 예제를 통해서 기술하세요.
	<jsp:useBean id="빈이름" class="자바패키지.클래스명" scope="범위"/>
		id : jsp 페이지에서 자바빈 객체에 접근할 때 사용할 이름
		class : 패키지 이름을 포함한 자바빈 클래스의 완전한 이름
		scope : 자바빈 객체가 저장될 영역을 지정 page, request, session, application 중
			하나를 값으로 갖는다.
--%>
<jsp:useBean id="emp" class="webprj.z01_vo.Emp" scope="session"/>
<%--
[1단계:확인] 2. useBean을 이용하여 물건명/가격/갯수를 저장하여 출력하게 처리히세요(vo==>bean)
--%>
<h2>2. </h2>
<jsp:useBean id="product" class="webprj.z01_vo.Product001" scope="session"/>
<jsp:setProperty property="*" name="product"/>

<%
	product.setPname("사과");
	product.setPrice(3000);
	product.setRcnt(5);
%>
<table>
	<tr><th>물건명</th><td><%=product.getPname() %></td></tr>
	<tr><th>물건가격</th><td><%=product.getPrice() %></td></tr>
	<tr><th>물건개수</th><td><%=product.getRcnt() %></td></tr>
</table>

<%--
[1단계:확인] 3. useBean을 이용하여 좋아하는 선수의 팀/선수명/성적을 form으로 입력해서 해당 화면에서 출력처리하세요.
--%>
<h2>3. </h2>
<jsp:useBean id="player" class="webprj.z01_vo.Player"/>
<jsp:setProperty property="*" name="player"/>
<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="teamname">팀명</label>
		</div>
		<div class="col-75">
			<input type="text" id="teamname" name="teamname" placeholder="팀명 입력.." value="">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="player">플레이어명</label>
		</div>
		<div class="col-75">
			<input type="text" id="player" name="player" placeholder="선수명 입력.." value="">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="score">성적</label>
		</div>
		<div class="col-75">
			<input type="text" id="score" name="score" placeholder="성적 입력.." value="">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="요청값 전달">
	</div>
	</form>
</div>
<table>
	<tr><th>팀명</th><td><%=player.getTeamname() %></td></tr>
	<tr><th>플레이어명</th><td><%=player.getPlayer() %></td></tr>
	<tr><th>성적</th><td><%=player.getScore() %></td></tr>
</table>
<%--
[1단계:확인] 4. 부서정보를 등록하는 form을 만들고 useBean을 이용해서 등록 처리하고, 현재 등록된 내용을 리스트 처리하세요(DAO)
--%>
<h2>부서 등록 및 리스트</h2>
<form>
<div class="container">
	<div class="row">
		<div class="col-25">
			<label for="deptno">부서번호</label>
		</div>
		<div class="col-75">
			<input type="text" id="deptno" name="deptno" placeholder="부서번호 입력.." value="">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="dname">부서명</label>
		</div>
		<div class="col-75">
			<input type="text" id="dname" name="dname" placeholder="부서명 입력.." value="">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="loc">부서위치</label>
		</div>
		<div class="col-75">
			<input type="text" id="loc" name="loc" placeholder="부서위치 입력.." value="">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="부서정보 등록">
	</div>
</div>
</form>
<jsp:useBean id="dept" class="webprj.z01_vo.Dept"/>
<jsp:setProperty property="*" name="dept"/>
<%
A04_PreDAO dao = new A04_PreDAO();
if(dept.getDname() != null){ // 초기화면이 아닐 때
	dao.insertDept(dept);
}
%>
<table>
	<tr><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
	<%for(Dept d : dao.getDeptList("", "")){ %>
	<tr><td><%=d.getDeptno() %></td><td><%=d.getDname() %></td><td><%=d.getLoc() %></td></tr>
	<%} %>
	
</table>

<%--
[1단계:확인] 5. el을 이용하여 곰돌이 3마리가 먹은 빵의 갯수가 20개일 때, 균등 배분 빵의 갯수와 나머지 갯수 출력하세요.
--%>
<h2>5. </h2>
<%
	request.setAttribute("bears", 3);
	request.setAttribute("breads", 20);	
%>
<table>
	<tr><th>곰돌이 수</th><td>${bears}</td></tr>
	<tr><th>빵 개수</th><td>${breads}</td></tr>
	<tr><th>(빵 개수) / (곰돌이 수) = 균등 배분 빵 개수</th><td>${Math.floor(breads / bears) }</td></tr>
	<tr><th>(빵 개수) % (곰돌이 수) = 나머지 개수</th><td>${breads % bears}</td></tr>
</table>



</body>
</html>