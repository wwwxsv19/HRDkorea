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
	<h1>롯데자이언츠 선수 목록</h1>
	<table border=1>
		<tr>
			<td>코치 번호</td>
			<td>코치 이름</td>
			<td>코치 포지션</td>
			<td>관리 선수</td>
			<td>관리 선수 연봉 합계</td>
			<td>관리 선수 평균 연봉</td>
			<td>관리 선수 최대 연봉</td>
			<td>관리 선수 최소 연봉</td>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		try {
			String query = "select coach.cid, cname, cposition, count(pcost), sum(pcost), " 
			+ "to_char(avg(pcost), '99999'), max(pcost), min(pcost) from coach, money "
			+ "where coach.cid = money.cid group by coach.cid, cname, cposition "
			+ "order by sum(pcost) desc";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {				
				String howMany = rs.getString(4) + "명";
				%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= howMany %></td>
					<td><%= rs.getString(5) %></td>
					<td><%= rs.getString(6) %></td>
					<td><%= rs.getString(7) %></td>
					<td><%= rs.getString(8) %></td>
				</tr>
				<%
			}
		} catch(Exception e) {
			
		}
		%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>