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
<script>
 	function checkId(){
		var id = document.querySelector("[name=id]")
		if(id.value.trim() == ""){
			alert("아이디를 공백으로 입력하셨습니다. 아이디는 필수 입력사항 입니다.")
			id.value = "";
			id.focus();
			return;
		}else{
			if(!(id.value.length >= 5 && id.value.length <= 16)){
				alert("아이디는 5~16자로 등록 가능합니다.");
				id.value = "";
				id.focus();
				return;
			}else{
				alert("유효성 검사 통과")
			}
 		}
		document.querySelector("form").submit();
	}
 	function ckKeyCode(){
 		// alert(event.keyCode); // 키보드의 코드값 (enter키 : 13)
 		if(event.keyCode == 13){ // enter키 입력 시
 			checkId();
 		}
 	}
</script>
<%
String id = request.getParameter("id");
if(id == null) id = "";
%>
	
	<form action="a17_ckId.jsp" onSubmit="return false;">
		ID : <input type="text" name="id" onkeyup="ckKeyCode()" value="<%=id%>"/><br>
		<input type="button" value="유효 check" onclick="checkId()"/>
	</form>
</body>
</html>