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
<script type="text" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>>
<section>
	<h1>선수 조회</h1>
		<table border=1>
		<tr>
			<td>선수 ID</td>
			<td>선수 이름</td>
			<td>포지션</td>
			<td>선수 등록일</td>
			<td>팀 이름</td>
		</tr>
		<% 
		
		request.setCharacterEncoding("UTF-8");
		
		try {
			String query = "select pid, pname, position, pdate, tname "
					+ "from player p, team t "
					+ "where p.tid = t.tid "
					+ "order by pid";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString(1);
				
				String name = "☞" + rs.getString(2);
				
				String position = rs.getString(3);
				if(position.equals("GK")) position = "골키퍼";
				else if(position.equals("DF")) position = "수비수";
				else if(position.equals("MF")) position = "미드필더";
				else if(position.equals("FW")) position = "공격수";
				
				String dt = rs.getString(4);
				String date = dt.substring(0, 4) + "년" + dt.substring(4, 6) + "월" + dt.substring(6, 8) + "일";
				%>
				<tr>
					<td><a href="modify.jsp?pid=<%= id %>"><%= id %></a></td>
					<td><%= name %></td>
					<td><%= position %></td>
					<td><%= date %></td>
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
<jsp:include page="footer.jsp"></jsp:include>>
</body>
</html>