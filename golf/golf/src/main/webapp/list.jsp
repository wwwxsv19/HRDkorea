<%@ include file="db.jsp" %>
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
	<h1>강사 조회</h1>
	<table border=1>
		<tr>
			<td>강사 코드</td>
			<td>강사명</td>
			<td>강의명</td>
			<td>수강료</td>
			<td>강사 자격 취득일</td>
		</tr>
		<%
		
		request.setCharacterEncoding("UTF-8");
		
		try {
			String query = "select * from coach";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String ct = rs.getString(4);
				String cost = "￦" + ct.substring(0, 3) + "," + ct.substring(3, 6);
				
				String dt = rs.getString(5);
				String date = dt.substring(0, 4) + "년" + dt.substring(4, 6) + "월" + dt.substring(6, 8) + "일";
				
				%>
				
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= cost %></td>
					<td><%= date %></td>
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