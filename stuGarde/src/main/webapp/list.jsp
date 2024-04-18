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
	<h1>학생정보현황</h1>
	<table border=1>
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>주민번호</td>
			<td>학과명</td>
			<td>성별</td>
			<td>전화번호</td>
			<td>이메일</td>
		</tr>
		<% 
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select stuid, sname, jumin, deptName, phone, email from stuInfor";
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					String jm = rs.getString(3);
					String jumin = jm.substring(0, 6) + "-" + jm.substring(6, 13);
					
					String gender = jm.substring(6, 7);
					if(gender.equals("3")) gender = "남자";
					else gender = "여자";
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=jumin%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=gender%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
					</tr>
					<% 
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>