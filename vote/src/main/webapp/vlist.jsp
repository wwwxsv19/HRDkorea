<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>vlist</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>투표검수조회</h1>
	<form>
		<table border=1>
			<tr>
				<td>성명</td>
				<td>생년월일</td>
				<td>나이</td>
				<td>성별</td>
				<td>후보번호</td>
				<td>투표시간</td>
				<td>유권자확인</td>
			</tr>
			<%
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select vName, vJumin, mNo, vTime, vConfirm from vote";
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					String jumin = rs.getString(2);
					
					String Ybth = jumin.substring(0, 2);
					String Mbth = jumin.substring(2, 4);
					String Dbth = jumin.substring(4, 6);
					String birth = "19" + Ybth + "년" + Mbth + "월" + Dbth + "일생";
					
					int age = 2020 - Integer.parseInt("19" + Ybth);
					String Age = "만 " + Integer.toString(age) + "세";

					String gender = jumin.substring(6, 7);
					if(gender.equals("1")) gender = "남";
					else gender = "여";
					
					String time = rs.getString(4);
					String vTime = time.substring(0, 2) + ":" + time.substring(2, 4);
					
					String confirm = rs.getString(5);
					if(confirm.equals("Y")) confirm = "확인";
					else confirm = "미확인";
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=birth%></td>
						<td><%=Age%></td>
						<td><%=gender%></td>
						<td><%=rs.getString(3) %></td>
						<td><%=vTime %></td>
						<td><%=confirm%></td>
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