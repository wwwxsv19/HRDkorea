<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>mlist</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>후보조회</h1>
	<form>
		<table border=1>
			<tr>
				<td>후보번호</td>
				<td>성명</td>
				<td>소속정당</td>
				<td>학력</td>
				<td>주민번호</td>
				<td>지역구</td>
				<td>대표전화</td>
			</tr>
			<%
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select mNo, mName, pName, pSchool, mJumin, mCity, pTel1, pTel2, pTel3 "
						+ "from vmember, party "
						+ "where party.pCode = vmember.pCode";
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					String school = rs.getString(4);
					if(school.equals("1")) school="고졸";
					else if(school.equals("2")) school="학사";
					else if(school.equals("3")) school="석사";
					else school="박사";
					
					String jm = rs.getString(5);
					String jumin = jm.substring(0, 6) + "-" + jm.substring(6, 13);
					
					String phone = rs.getString(7) + "- " + rs.getString(8) + " - " + rs.getString(9);
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=school%></td>
						<td><%=jumin%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=phone%></td>
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