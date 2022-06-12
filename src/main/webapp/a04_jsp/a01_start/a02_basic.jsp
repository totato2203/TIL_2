<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
# jsp 페이지의 구성 요소
1. 디렉티브(directive)
2. 스크립트(jsp에서 자바코드) : scriptlet(<% %>),
	expression(<%= %>), declaration(<%! %>)
3. 표현언어(expression language) ${param.id}
4. 기본 객체(implicit Object)
	request, response, session, out
5. 정적인 데이터
6. 표준 액션 태그
7. 커스텀 태그(custom tag)와 표준 태그 라이브러리(jstl)

# directive
1. jsp 페이지에 대한 설정 정보를 지정
2. 디렉티브 구문
	<%@ 디렉티브명 속성1 = "속성1값" 속성2 = "속성2값"
3. 사용되는 디렉티브명
	1) page : jsp 페이지에 대한 정보를 지정
		문서의 타입, 출력 버퍼의 크기, 에러 페이지 등 정보 지정
	2) taglib : 사용할 태그 라이브러리를 지정
		<%@ taglib %>
	3) include : 다른 문서를 포함
4. page 디렉티브
	1) jsp가 생성할 문서의 타입, 사용할 클래스, 버퍼 여부, 세션 여부
	2) 작성 예
		<%@ page contentType="text/html;charset=utf-8"%>
		<%@ page import="java.util.Date"%>
	3) 주요 속성
		contentType : jsp가 생성할 문서의 타입을 지정
		import : jsp 페이지에서 사용할 자바 클래스를 지정
		session : jsp 페이지가 세션을 사용할 지의 여부를 지정
		info : jsp 페이지에 대한 설명을 입력한다.
		errorPage : 에러가 발생할 때 보여줄 페이지를 지정
		ieErrorPage : 에러 페이지인지 여부를 지정
5. 스크립트 요소
	1) 요청을 처리하는데 필요한 코드를 실행
	2) 동적으로 응답 결과를 생성하기 위해 사용
	3) 스크립트의 요소 세 가지
		- 스크립트릿(scriptlet) <% %>
		- 표현식(expression) <%= %>
		- 선언부(declaration) <%! %>
--%>
<%--
# 스크립트릿
1. 자바 코드를 실행할 때 사용되는 코드 블럭
 --%>
<%
	String name = "홍길동";
	int age = 25;
	String loc = "서울 방배동";
%>
<%
	String product = "사과";
	int price = 2000;
	int cnt = 3;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>이름 <%=name %></h2> <%-- <%=변수%> 주로 화면에 출력 expression --%>
	<h2>나이 <%=age %></h2>
	<h2>사는 곳 <%=loc %></h2>
	<%
	for(int cnt02 = 1; cnt02 <= 10; cnt02++){
	%>
		<h3>반복할 내용 <%=cnt02 %>번째 출력</h3>
	<%
	}
	%>
	<%--
	ex) 물건명 가격 개수 선언과 할당을 하고
		h3 화면으로 java로 선언된 내용을 출력하고
		반복문으로 해당 가격으로 1~10개까지 구매한 가격을 출력하세요.
			물건명 @@@를 1개 구매한 가격은 @@@
			물건명 @@@를 2개 구매한 가격은 @@@
			물건명 @@@를 3개 구매한 가격은 @@@
			...
			물건명 @@@를 10개 구매한 가격은 @@@
	 --%>
	 <h3>물건명 <%=product %></h3>
	 <h3>가격 <%=price %></h3>
	 <h3>개수 <%=cnt %></h3>
	 <%
	 for(cnt = 1; cnt <= 10; cnt++){
	 %>
	 	<h3>물건명 <%=product %>를 <%=cnt %>개 구매한 가격은 <%=(price * cnt)%>원</h3>
	 <%
	 }
	 %>
	 <table width="30%" border>
	 	<%for(cnt = 1; cnt <= 9; cnt++){ %>
	 		<%if(cnt % 3 == 1){ %> <%-- 1, 4, 7에서만 <tr> --%>
	 		<tr>
	 		<%}%>
	 		<td><%=cnt %></td>
	 		<%
	 		if(cnt % 3 == 0){	// 3, 6, 9일 때 </tr>
	 		%>	
	 		</tr>
	 		<%}%>
	 	<%
	 	}
	 	%>
	 </table>
</body>
</html>