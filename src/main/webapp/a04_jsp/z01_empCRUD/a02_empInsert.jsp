<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.A04_PreDAO"
    import="webprj.z01_vo.Emp"
    %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
   function regEmp(){
	   	if(confirm("사원을 등록하시하겠습니까?")){
			var empnoObj = document.querySelector("#empno");
			var enameObj = document.querySelector("#ename");
			var mgrObj = document.querySelector("#mgr");
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
			if(mgrObj.value.trim()=="" || isNaN(mgrObj.value)){
		        alert("관리자번호를 입력하세요");
		        mgrSObj.focus();
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
   <%
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

   log("empno : " + empno); log("mgr : " + mgr); log("deptno : " + deptno);
   log("sal : " + sal); log("comm : " + comm);
   log("ename : " + ename); log("job : " + job); log("hiredateS : " + hiredateS);


   // 등록 처리를 위한 조건
   String isIns = "N";
   if(empnoS != null && !empnoS.trim().equals("")){
     // 등록할 Emp() 생성..
     // Emp(int empno, String ename, String job, int mgr, 
     // String hiredate_s, double sal, double comm, int deptno)
     A04_PreDAO dao = new A04_PreDAO();
     dao.insertEmp(new Emp(empno, ename, job, mgr, hiredateS, sal, comm, deptno));
     isIns = "Y";
   }

%>

	var isIns = "<%=isIns%>";
	if(isIns == "Y"){
		if(confirm("등록성공!!\n조회화면으로 이동하시겠습니까?")){
			location.href="a01_empSchList.jsp"
		}
	}

</script>
</head>
<body>

<h2>사원 등록</h2>

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
    <div class="col-25">
      <label for="ename">사원명(*)</label>
    </div>
    <div class="col-75">
      <input type="text" id="ename" name="ename" value="" placeholder="사원명 입력..">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="job">직책명</label>
    </div>
    <div class="col-75">
      <input type="text" id="job" name="job" value="" placeholder="직책명 입력..">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="mgr">관리자번호</label>
    </div>
    <div class="col-75">
      <input type="text" id="mgr" name="mgr" value="" placeholder="관리자번호 입력..">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="hiredateS">입사일(*)</label>
    </div>
    <div class="col-75">
      <input type="text" id="hiredateS" name="hiredateS" value="" placeholder="YYYY-MM-DD">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="sal">급여</label>
    </div>
    <div class="col-75">
      <input type="text" id="sal" name="sal" value="" placeholder="급여 입력..">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="comm">보너스</label>
    </div>
    <div class="col-75">
      <input type="text" id="comm" name="comm" value="" placeholder="보너스 입력..">
    </div>
  </div>
  <div class="row">
    <input type="submit" onclick="regEmp()" value="등록">
  </div>
  </form>
  
</div>

</body>
</html>