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
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>롯데자이언츠 선수 목록</h1>
	<form>
	<table border=1>
		<tr>
			<td>선수번호</td>
			<td>선수이름</td>
			<td>선수포지션</td>
			<td>선수등록일</td>
			<td>선수등급</td>
			<td>삭제</td>
		</tr>
		<% 
		request.setCharacterEncoding("UTF-8");
		
		try {
			String query = "select * from player";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String dt = rs.getString(4);
				String date = dt.substring(0, 4) + "년" + dt.substring(4, 6) + "월" + dt.substring(6, 8) + "일";
				
				%>
				<tr>
					<td><a href="modify.jsp?pid=<%= rs.getString(1) %>"><%= rs.getString(1) %></a></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= date %></td>
					<td><%= rs.getString(5) %></td>
					<td><a href="delete.jsp?pid=<%= rs.getString(1) %>">삭제</a></td>
				</tr>
				<%
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		%>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>