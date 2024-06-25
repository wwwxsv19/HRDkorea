<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>money</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>강사 매출 현황</h1>
	<table border=1>
		<tr>
			<td>강사 코드</td>
			<td>강의명</td>
			<td>강사명</td>
			<td>총매출</td>
		</tr>
		<%
		
		request.setCharacterEncoding("UTF-8");
		
		try {
			String query = "select code, tname, cname, sum(cost) "
						+ "from coach natural join class "
						+ "group by code, tname, cname order by code";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String ct = rs.getString(4);
				String cost = "￦" + ct.substring(0, 3) + "," + ct.substring(3, 6);
				
				%>
				
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= cost %></td>
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