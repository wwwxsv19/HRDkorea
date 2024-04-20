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
	<h1>홈쇼핑 회원 정보 수정</h1>
	<table border="1">
		<tr>
			<td>회원번호</td>
			<td>회원성명</td>
			<td>전화번호</td>
			<td>주소</td>
			<td>가입일자</td>
			<td>고객등급</td>
			<td>거주지역</td>
		</tr>
		<% 
		request.setCharacterEncoding("UTF-8");
		try {
			String query = "select * from member";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String dt = rs.getString(5);
				String joindate = dt.substring(0, 4) + "-" + dt.substring(5, 7) + "-" + dt.substring(8, 10);
				
				String g = rs.getString(6);
				if(g.equals("A")) g = "VIP";
				else if(g.equals("B")) g = "일반";
				else g = "직원";
				
				%>
				<tr>
					<td><a href="modify.jsp?custno=<%= rs.getInt(1) %>" ><%= rs.getInt(1) %></a></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= joindate %></td>
					<td><%= g %></td>
					<td><%= rs.getString(7) %></td>
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