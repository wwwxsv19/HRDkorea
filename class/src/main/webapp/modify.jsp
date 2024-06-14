<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modify</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
<% 

request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String name = "";
String score = "";
String teacher = "";
String weekday = "";
String shour = "";
String ehour = "";

try {
	String query = "select * from subject where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()) {
		name = rs.getString(2);
		score= rs.getString(3);
		teacher = rs.getString(4);
		weekday = rs.getString(5);
		shour = rs.getString(6);
		ehour = rs.getString(7);
	}
} catch(Exception e) {
	e.printStackTrace();
}

%>
	<h1>교과목 수정</h1>
	<form name="frm2" action="uaction.jsp" method="get">
	<table border=1>
		<tr>
			<td>과목 코드</td>
			<td style="text-align : left">
				<input type="text" name="id" value="<%= id %>" readonly>
			</td>
		</tr>
		<tr>
			<td>과목명</td>
			<td style="text-align : left">
				<input type="text" name="name" value="<%= name %>">
			</td>
		</tr>			
		<tr>
			<td>학점</td>
			<td style="text-align : left">
				<input type="text" name="score" value="<%= score %>">
			</td>
		</tr>
		<tr>
			<td>담당 강사</td>
			<td style="text-align : left">
				<select name="teacher">
					<option value="">담당 강사</option>
					<option value="1" <% if(teacher.equals("1")) out.println("selected='selected'"); %>>진국어</option>
					<option value="2" <% if(teacher.equals("2")) out.println("selected='selected'"); %>>차영어</option>
					<option value="3" <% if(teacher.equals("3")) out.println("selected='selected'"); %>>구전공</option>
					<option value="4" <% if(teacher.equals("4")) out.println("selected='selected'"); %>>손전공</option>
					<option value="5" <% if(teacher.equals("5")) out.println("selected='selected'"); %>>이전공</option>
					<option value="6" <% if(teacher.equals("6")) out.println("selected='selected'"); %>>김전공</option>
				</select>
			</td>
		</tr>			
		<tr>
			<td>요일</td>
			<td style="text-align : left">
				<input type="radio" name="weekday" value="1" <% if(teacher.equals("1")) out.println(" checked='checked'"); %>>월요일
				<input type="radio" name="weekday" value="2" <% if(teacher.equals("2")) out.println(" checked='checked'"); %>>화요일
				<input type="radio" name="weekday" value="3" <% if(teacher.equals("3")) out.println(" checked='checked'"); %>>수요일
				<input type="radio" name="weekday" value="4" <% if(teacher.equals("4")) out.println(" checked='checked'"); %>>목요일
				<input type="radio" name="weekday" value="5" <% if(teacher.equals("5")) out.println(" checked='checked'"); %>>금요일
			</td>
		</tr>
		<tr>
			<td>시작 시간</td>
			<td style="text-align : left">
				<input type="text" name="shour" value="<%= shour %>">
			</td>
		</tr>			
		<tr>
			<td>종료 시간</td>
			<td style="text-align : left">
				<input type="text" name="ehour" value="<%= ehour %>">
			</td>
		</tr>
		<tr>
			<td colspan = 2>
				<input type="submit" value="수정" onclick="check2()">
				<input type="reset" value="취소" onclick="res()">
			</td>
		</tr>			
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>