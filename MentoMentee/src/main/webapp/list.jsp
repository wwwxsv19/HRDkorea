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
	<h1>멘티 조회하기</h1>
	<table border=1>
		<tr>
			<td>고유 ID</td>
			<td>학생명</td>
			<td>학번</td>
			<td>전화번호</td>
			<td><a href="class.jsp">희망 수업</a></td>
			<td>담당 멘토</td>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		try {
			String query = "select eid, ename, grade, mentee.class, mentee.phone, cname, oname "
					+ "from mentee, mento, class "
					+ "where mentee.mntid = mento.oid and mento.classid = class.cid";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String grade = rs.getString(3) + "학년 " + rs.getString(4) + "반";
				String oname = "멘토 " + rs.getString(7);
				%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= grade %></td>
					<td><%= rs.getString(5) %></td>
					<td><%= rs.getString(6) %></td>
					<td><%= oname %></td>
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