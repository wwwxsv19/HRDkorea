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
	<h1>차량 조회</h1>
	<table border=1>
		<tr>
			<td>차량번호</td>
			<td>차량 종류</td>
			<td>소유자 이름</td>
			<td>주차 위치</td>
			<td>입차 시간</td>
			<td>출차 시간</td>
		</tr>
		<% 
		request.setCharacterEncoding("UTF-8");
		
		String carNum = "";
		carNum = request.getParameter("carNum");
		
		try {
			String query = "select * from car natural join parking where carNum = ?";
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, carNum);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {	
			%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getString(5) %></td>
					<td><%= rs.getString(6) %></td>
				</tr>
			<%
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>