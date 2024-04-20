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
	<h1>홈쇼핑 회원 정보 수정</h1>
	<table border="1">
		<tr>
			<td>회원번호</td>
			<td>회원성명</td>
			<td>고객등급</td>
			<td>매출</td>
		</tr>
		<% 
		request.setCharacterEncoding("UTF-8");
		try {
			String query = "select money.custno, member.custname, member.grade, sum(price) "
						+ "from money, member "
						+ "where money.custno = member.custno "
						+ "group by money.custno, member.custname, member.grade";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String g = rs.getString(3);
				if(g.equals("A")) g = "VIP";
				else if(g.equals("B")) g = "일반";
				else g = "직원";
				
				%>
				<tr>
					<td><%= rs.getInt(1) %></a></td>
					<td><%= rs.getString(2) %></td>
					<td><%= g %></td>
					<td><%= rs.getString(4) %></td>
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