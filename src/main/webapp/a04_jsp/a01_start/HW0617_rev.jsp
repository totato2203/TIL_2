<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String option = request.getParameter("option");
	String answer = "";
	if(option != null){
		if(option.equals("3")){
			answer = "정답은 3번. 6 입니다. 정답!!";
		}else{
			answer = "정답은 3번. 6 입니다. 땡!!";
		}
	}else{
		answer = "정답을 고르고 다시 제출하세요.";
	}%>
<script type="text/javascript">
	var result = "<%=answer%>";
	alert(result);
	if(result == "정답을 고르고 다시 제출하세요."){
	}
	location.href = "HW0617.jsp";
</script>
</body>
</html>