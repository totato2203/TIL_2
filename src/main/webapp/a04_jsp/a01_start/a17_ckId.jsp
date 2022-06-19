<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
# 웹 요청값 처리 및 js 연습 예제
1. 회원 id 등록된 여부 check
	회원 id [   ] [유효 check]
	유효 check 버튼 클릭 시
	js단 유효 처리 - 공백인지 여부 check해서 alert() 표기
	jsp단 유효 처리 - 공백이 아니면 다음 페이지(a17_ckId.jsp)에 넘겨
		himan이면 등록된 아이디 입니다. 그 외는 등록 가능합니다. 표시 처리
--%>
<%
String id = request.getParameter("id");
String ckValid = "";
if(id != null){
	if(id.equals("himan")){
		ckValid = "등록된 아이디 입니다. 로그인 성공!";
	}else{
		ckValid = "등록 가능합니다!";
	}
}%>
<script type="text/javascript">
	var result = "<%=ckValid%>"; // js 넘기기
	var sendId = "";
	alert(result);
	if(result == "등록 가능합니다!"){
		sendId = "<%=id %>";
	}
	location.href = "a16_requestExp.jsp?id=" + sendId; // 기존 페이지로 이동
</script>
</body>
</html>