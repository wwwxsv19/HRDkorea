<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>class</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>수업 조회하기</h1>
	<table border=1>
		<tr>
			<td>수업 번호</td>
			<td>수업명</td>
			<td>담당 멘토</td>
			<td>수업 장소</td>
			<td>문의</td>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		try {
			String query = "select cid, cname, oname, place, phone "
					+ "from mento, class "
					+ "where mento.classid = cid order by phone";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getString(5) %></td>
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