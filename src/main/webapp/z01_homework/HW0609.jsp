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
2022-06-09
[1단계:개념] 1. 테이블의 padding 옵션은 어떤 역할을 하는지와 4가지 방향으로 설정하는 옵션을 기술하세요.
		padding-(방향): (n)px -> (방향)쪽으로 (n)px만큼 간격을 둠 (방향 : top, bottom, left, right)
--%>

<%--
[1단계:개념] 2. rowspan과 colspan의 차이를  3X3 테이블의 예제를 통해 기술하세요
		rowspan = "n" -> 세로 방향으로 칸을 합침
		colspan = "n" -> 가로 방향으로 칸을 합침
--%>
		<table style="width:100%">
		  <tr>
		    <th>Name</th>
		    <td>Jill</td>
		    <td>Sam</td>
		  </tr>
		  <tr>
		    <th rowspan="3">Phone</th>
		    <td>555-1234</td>
		    <td>555-5678</td>
		  </tr>
		  <tr>
		    <td colspan="2">555-8745</td>
		  </tr>
		</table>
	
<%--
[1단계:개념] 3. 테이블에서 반복적인 행이나 열단위 배경색상이나 글자 색상을 처리할 때, 옵션을 예제를 통해서 기술하세요.

		<colgroup>
			<col span = "n" style = "background-color : (색깔)"> 	-> 1행부터 n행까지 배경색을 (색깔)색으로 바꾼다.
		</colgroup>
--%>
		
		<table style="width: 100%;">
		<colgroup>
		  <col span="3" style="background-color: blue">
		</colgroup>
		<tr>
	
		</tr>
		<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		<td>4</td>
		<td>5</td>
		<td>6</td>
		<td>7</td>
		</tr>
		<tr>
		<td>8</td>
		<td>9</td>
		<td>10</td>
		<td>11</td>
		<td>12</td>
		<td>13</td>
		<td>14</td>
		</tr>
		<tr>
		<td>15</td>
		<td>16</td>
		<td>17</td>
		<td>18</td>
		<td>19</td>
		<td>20</td>
		<td>21</td>
		</tr>
		<tr>
		<td>22</td>
		<td>23</td>
		<td>24</td>
		<td>25</td>
		<td>26</td>
		<td>27</td>
		<td>28</td>
		</tr>
		</table>
	
<%--
[1단계:개념] 4. 테이블의 td의 방향별로 border의 색상을 다르게 할 때, 처리하는 옵션을 기술하세요.
		 border-(방향): (n)px solid black;	-> (방향)쪽에만 border 생성
--%>
		<style>
		table {
		  border-collapse: collapse;
		  width: 100%;
		}
		
		tr {
		  border-right: 1px solid black;
		}
		</style>
	
<%--
[1단계:개념] 5. 테이블의 행단위로 커서를 위치시켰을 때, 배경색상이 변경되는 옵션을 기술하세요.
--%>
		<head>
		<style>
		table {
		  border-collapse: collapse;
		  width: 100%;
		}
		th, td {
		  padding: 8px;
		  text-align: left;
		  border-bottom: 1px solid #DDD;
		}
		tr:hover {background-color: #D6EEEE;}				<%-- -> tr:hover{} : 커서 위치의 열에 {} 적용 --%>
		</style>
		</head>
		
		<table>
		  <tr>
		    <th>First Name</th>
		    <th>Last Name</th>
		    <th>Points</th>
		  </tr>
		  <tr>
		    <td>Peter</td>
		    <td>Griffin</td>
		    <td>$100</td>
		  </tr>
		  <tr>
		    <td>Lois</td>
		    <td>Griffin</td>
		    <td>$150</td>
		  </tr>
		  <tr>
		    <td>Joe</td>
		    <td>Swanson</td>
		    <td>$300</td>
		  </tr>
		  <tr>
		    <td>Cleveland</td>
		    <td>Brown</td>
		    <td>$250</td>
		  </tr>
		</table>

<%--
[1단계:개념] 6. 목록을 나타낼 때, 사용하는 ul/ol의 차이와 속성들을 기본 예제를 통하여 기술하세요.
--%>
		
		<ul>				<%-- -> 순서가 없는 목록을 나타낼 때 사용한다. --%>
		  <li>Coffee</li>
		  <li>Tea</li>
		  <li>Milk</li>
		</ul> 
		
		<ol>				<%-- -> 순서가 있는 목록을 나타낼 때 사용한다. --%>
		  <li>Coffee</li>
		  <li>Tea</li>
		  <li>Milk</li>
		</ol> 
		
		<ol type = 'a'>		<%-- -> type = 'a' 등을 통해 다른 기호로 순서를 나타낼 수 있다 .--%>
		  <li>Coffee</li>
		  <li>Tea</li>
		  <li>Milk</li>
		</ol> 
		
<%--
[1단계:개념] 7. 요소들 가운데 block/inlne 속성이 있는 요소들이 있다. 특징을 기본 예제를 통해서 기술하세요.
--%>
		<p style="border: 1px solid black">Hello World</p>			<%-- -> block 요소 : 항상 사용가능한 전체 너비를 차지한다. ex) <p>, <div> --%>
		<span style="border: 1px solid black">Hello World</span>	<%-- -> inline 요소 : 필요한 만큼만 너비를 차지한다. ex) <span> --%>
		<div style="border: 1px solid black">Hello World</div>
		
		<p>The P and the DIV elements are both block elements, and they will always start on a new line and take up the full width available (stretches out to the left and right as far as it can).</p>
		
	
<%--
[1단계:확인] 8. 클래스, 태그, id로 특정 요소에 글자크기를 변경한 css 선언을 하여, 출력되게 처리하세요. 
--%>
		<!DOCTYPE html>
		<html>
		<head>
		<style>
		body {background-color: powderblue;}
		h1   {color: blue;}
		p    {color: red;}
		.zoomin {font-size: 200%;}
		#zoomout {font-size: 50%;}
		</style>
		</head>
		<body>
		
		<h1>This is a <span class="zoomin">heading</span></h1>
		<p>This is a <span id="zoomout">paragraph.</span></p>
		
		</body>
		</html>
		
<%--
[1단계:개념] 9. iframe의 기본 속성을 예제를 통해서 설명하세요. 
	기본 속성 : src, style, title 등
--%>
		<iframe src="demo_iframe.htm" style="border:10px solid black;"; height="100" width="600" title="Iframe Example"></iframe>
		
<%--
[1단계:확인] 10. 웹화면상 물건가격, 물건명, 물건갯수를 입력하는 폼화면을 구현하세요.
--%>
		<form action="/HW0609_rev.jsp"> <%-- action="전송할 jsp/java" --%>
		  <label for="price">Price :</label><br>
		  <input type="text" id="price" name="price"><br>
          <label for="pname">Pname :</label><br>
		  <input type="text" id="pname" name="pname"><br>
		  <label for="cnt">Count:</label><br>
		  <input type="text" id="cnt" name="cnt"><br><br>
		  <input type="submit" value="Submit">
		</form> 

<%--
[1단계:개념] 11. checkbox와 radio의 차이점을 기본 예제를 통하여 기술하세요.
--%>
		<h2>checkbox와 radio의 차이점</h2>
		
		<form action="/action_page.php">
		  <input type="radio" id="html" name="fav_language" value="HTML">				<%-- -> radio 버튼은 중복 선택 불가능 --%>
		  <label for="html">HTML</label><br>
		  <input type="radio" id="css" name="fav_language" value="CSS">
		  <label for="css">CSS</label><br>
		  <input type="radio" id="javascript" name="fav_language" value="JavaScript">
		  <label for="javascript">JavaScript</label><br><br>
		  
		  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">			<%-- -> checkbox 버튼은 중복 선택 가능 --%>
		  <label for="vehicle1"> I have a bike</label><br>
		  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
		  <label for="vehicle2"> I have a car</label><br>
		  <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
		  <label for="vehicle3"> I have a boat</label><br><br>
		  <input type="submit" value="Submit">
		</form> 
		
</body>
</html>


