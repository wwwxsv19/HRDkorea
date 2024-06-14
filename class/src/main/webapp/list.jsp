<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>list</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>교과목 목록</h1>
	<table border=1>
		<tr>
			<td>과목 코드</td>
			<td>과목명</td>
			<td>학점</td>
			<td>담당 강사</td>
			<td>요일</td>
			<td>시작 시간</td>
			<td>종료 시간</td>
			<td>삭제</td>
		</tr>
		<% 
		
		request.setCharacterEncoding("UTF-8");
		
		try {
			String query = "select s.id, s.name, score, t.name, weekday, shour, ehour "
						+ "from subject s, teacher t "
						+ "where s.teacher = t.id";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString(1);
				
				String week = rs.getString(5);
				if(week.equals("1")) week = "월요일";
				else if(week.equals("2")) week = "화요일";
				else if(week.equals("3")) week = "수요일";
				else if(week.equals("4")) week = "목요일";
				else week = "금요일";
				
				String shour = (rs.getString(6)).substring(0, 2) + "시 " + (rs.getString(6)).substring(2, 4) + "분";
				String ehour = (rs.getString(7)).substring(0, 2) + "시 " + (rs.getString(7)).substring(2, 4) + "분";
				
				%>
				<tr>
					<td><a href="modify.jsp?id=<%= id %>"><%= id %></a></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= week %></td>
					<td><%= shour %></td>
					<td><%= ehour %></td>
					<td><a href="delete.jsp?id=<%= id %>">삭제</a></td>
				</tr>
				<% 
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>