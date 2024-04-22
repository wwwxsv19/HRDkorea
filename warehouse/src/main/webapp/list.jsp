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
	<h1>제품조회</h1>
	<form>
	<table border=1>
		<tr>
			<td>제품코드</td>
			<td>제품명</td>
			<td>사이즈</td>
			<td>매입단가</td>
			<td>출고단가</td>
		</tr>
		<% 
		request.setCharacterEncoding("UTF-8");
		
		try {
			String query = "select * from product";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String input = Integer.toString(rs.getInt(4));
				String inputM = "₩" + input.substring(0, 1) + "," + input.substring(1, 4);
				
				String output = Integer.toString(rs.getInt(5));
				String outputM = "₩" + output.substring(0, 1) + "," + output.substring(1, 4);
				
				%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td style="text-align:right"><%= inputM %></td>
					<td style="text-align:right"><%= outputM %></td>
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