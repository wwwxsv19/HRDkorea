<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>list2</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>>
<section>
	<h1>선수별 홈그라운드 조회</h1>
	<table border=1>
		<tr>
			<td>선수 이름</td>
			<td>포지션</td>
			<td>팀 이름</td>
			<td>경기장 이름</td>
			<td>좌석 수</td>
		</tr>
		<% 
		
		request.setCharacterEncoding("UTF-8");
		
		try {
			String query = "select pname, position, tname, sname, seatCount "
						 + "from player natural join team natural join stadium "
						 + "where seatCount >= 30000";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String name = "☞" + rs.getString(1);
				
				String position = rs.getString(2);
				if(position.equals("GK")) position = "골키퍼";
				else if(position.equals("DF")) position = "수비수";
				else if(position.equals("MF")) position = "미드필더";
				else if(position.equals("FW")) position = "공격수";
				
				String st = rs.getString(5);
				String seat = st.substring(0, 2) + "," + st.substring(2, 5) + "개";
				%>
				<tr>
					<td><%= name %></td>
					<td><%= position %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= seat %></td>
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