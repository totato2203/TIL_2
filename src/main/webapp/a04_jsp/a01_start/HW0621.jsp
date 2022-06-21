<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.Member"%>
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
	function insertMember(){
		if(confirm("회원을 등록하시겠습니까?")){
			var idObj = document.querySelector("#id");
			var pwObj = document.querySelector("#pw");
			var nameObj = document.querySelector("#name");
			if(idObj.value==""){
				alert("ID를 입력하세요");
				idObj.focus();
				return;
			}
			if(pwObj.value==""){
				alert("PW를 입력하세요");
				pwObj.focus();
				return;
			}
			if(nameObj.value==""){
				alert("이름을 입력하세요");
				nameObj.focus();
				return;
			}
			document.querySelector("form").submit();
		}
	}
</script>
</head>
<body>
<h2>회원 등록</h2>
<%
String req = request.getParameter("");

int point = 0;
String pointS = request.getParameter("point");
if(pointS != null) point = Integer.parseInt(pointS);

String id = request.getParameter("id"); if(id == null) id = "";
String pw = request.getParameter("pw"); if(pw == null) pw = "";
String name = request.getParameter("name"); if(name == null) name = "";
String auth = request.getParameter("auth"); if(auth == null) auth = "";

log("id : " + id); log("pw : " + pw); log("name : " + name);
log("point : " + point); log("auth : " + auth);
%>

<%--
2022-06-21
[1단계:개념] 1. 조회리스트 화면에서 사용되는 요청값 처리와 dao단 매개변수 처리 방식에 대하여 핵심 코드를 기술하세요
<form method="get">
	사원명 : <input type="text" name="ename" value="<%=ename%>"/><br>
	직책명 : <input type="text" name="job" value="<%=job%>"/><br>
	<input type="submit" value="검색"/><br>
</form>
				위 코드를 통해 요청값을 입력받고

<table id="customers">
	<tr><th>사원번호</th><th>사원명</th><th>직책</th><th>급여</th><th>부서번호</th></tr>
	<%for(Emp e : dao.getEmpList2(new Emp(ename, job))){ %>
	<tr><td><%=e.getEmpno() %></td><td><%=e.getEname() %></td><td><%=e.getJob() %></td><td><%=e.getSal() %></td><td><%=e.getDeptno() %></td></tr>
	<%} %>
</table>
				위 코드를 통해 입력받은 요청값을 매개변수로 하는 DAO를 출력한다.


[1단계:개념] 2. 등록 처리를 위해서 처리하는 순서를 기술하세요.

	2-1. 필수 입력사항 설정 함수 선언(해당 값이 null(공백)일 경우 alert창에 메세지 출력)
		function regEmp(){
		   	if(confirm("사원을 등록하시하겠습니까?")){
		   		// id로 선언했을 때 인식가능
		   		// 물론 [name=empno]도 가능하다.
				var empnoObj = document.querySelector("#empno");
				var enameObj = document.querySelector("#ename");
				var hiredateSObj = document.querySelector("#hiredateS");
				if(empnoObj.value==""){
					alert("사원번호를 입력하세요");
					empnoObj.focus();
					return;
				}
				if(enameObj.value==""){
					alert("사원명을 입력하세요");
					enameObj.focus();
					return;
				}
				if(hiredateSObj.value==""){
					alert("입사일을 입력하세요");
					hiredateSObj.focus();
					return;
				}
				document.querySelector("form").submit();
			}
	   }
	
	2-2. 공백 유효성 검사(입력값이 null인 경우에 null 대신 ""이나 0을 입력하도록 설정)
		String req = request.getParameter("");

		int empno, mgr, deptno; empno = mgr = deptno = 0;
		double sal, comm; sal = comm = 0;
		
		String empnoS = request.getParameter("empno");
		if(empnoS != null) empno = Integer.parseInt(empnoS);
		
		String mgrS = request.getParameter("mgr");
		if(mgrS != null) mgr = Integer.parseInt(mgrS);
		
		String deptnoS = request.getParameter("deptno");
		if(deptnoS != null) deptno = Integer.parseInt(deptnoS);
		
		
		String salS = request.getParameter("sal");
		if(salS != null) sal = Double.parseDouble(salS);
		
		String commS = request.getParameter("comm");
		if(commS != null) comm = Double.parseDouble(commS);
		
		
		String ename = request.getParameter("ename"); if(ename == null) ename = "";
		String job = request.getParameter("job"); if(job == null) job = "";
		String hiredateS = request.getParameter("hiredateS"); if(hiredateS == null) hiredateS = "";
		
	2-3. 요청값 입력
		<div class="container">
		<form>
		  <div class="row">
		    <div class="col-25">
		      <label for="empno">사원번호(*)</label>
		    </div>
		    <div class="col-75">
		      <input type="text" id="empno" name="empno" value="" placeholder="사원번호 입력..">
		    </div>
		  </div>
		  <div class="row">
		    <input type="button" onclick="regEmp()" value="등록">
		  </div>
		  </form>
		</div>


[1단계:확인] 3. 회원 테이블 member(회원아이디, 패스워드, 회원명, 포인트, 권한)을 만들고, 
              회원등록 화면에서 등록 처리(dao 메서드 추가)하세요.(본인 단계 맞게 진행)
     1단계) 회원등록 화면구성 2단계) 회원등록 유효CHECK, 요청값 전달 3단계) DAO 만들기 4단계) 처리하기
--%>

<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for="id">ID(*)</label>
		</div>
		<div class="col-75">
			<input type="text" id="id" name="id" placeholder="ID 입력">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="pw">PW(*)</label>
		</div>
		<div class="col-75">
			<input type="text" id="pw" name="pw" placeholder="PW 입력">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="name">이름(*)</label>
		</div>
		<div class="col-75">
			<input type="text" id="name" name="name" placeholder="이름 입력">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="point">포인트</label>
		</div>
		<div class="col-75">
			<input type="text" id="point" name="point" placeholder="포인트 입력">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="auth">권한</label>
		</div>
		<div class="col-75">
			<input type="text" id="auth" name="auth" placeholder="권한 입력">
		</div>
	</div>
	<div class="row">
		<input type="button" onclick="insertMember()" value="등록">
	</div>
	</form>
</div>

</body>
</html>