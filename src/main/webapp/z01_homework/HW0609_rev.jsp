<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>구매한 물건</h2>
	<%--jsp 코드로 el로 받는데,
		param.요청한key : 넘겨오는 value로 출력된다.
		${param.pname} ==> 입력한 값을 가져온다.
			pname=사과
	 --%>
	 <h3>물건명 : ${param.pname}</h3>
	 <h3>가격 : ${param.price}</h3>
	 <h3>개수 : ${param.cnt}</h3>
</body>
</html>