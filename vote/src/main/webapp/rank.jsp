<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>rank</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>후보자등수</h1>
	<form>
		<table border=1>
			<tr>
				<td>후보번호</td>
				<td>성명</td>
				<td>총투표건수</td>
			</tr>
			<%
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select Vmember.mNo, mName, sum(vote.mNo) "
						+ "from Vmember, vote "
						+ "where Vmember.mNo = vote.mNo "
						+ "group by Vmember.mNo, mName "
						+ "order by sum(vote.mNo) desc";
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
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