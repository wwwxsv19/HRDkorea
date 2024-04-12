<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<%
		request.setCharacterEncoding("UTF-8");
		String empno = request.getParameter("empno");
	%>
	<h1>사원번호 : <%=empno %>님의 좌석예약조회</h1>
	<form name="frm" action="raction.jsp" method="get">
	<table border="1">
		<tr>
			<td>사원번호</td>
			<td>이름</td>
			<td>근무일자</td>
			<td>좌석번호</td>
			<td>좌석위치</td>
			<td>내선번호</td>
		</tr>
		<% 
		try {
			String query = "select et.empno, empname, resvdate, st.seatno, office, callno "
							+ "from empTbl et, seatTbl st, resvTbl rt "
	         				+ "where rt.empno = et.empno and rt.seatno = st.seatno and rt.empno = ?";
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, empno);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				 String date = rs.getString(3);
				 String dateY = date.substring(0, 4) + "년";
				 String dateM = date.substring(4, 6) + "월";
				 String dateD = date.substring(6, 8) + "일";
				 date = dateY + dateM + dateD;
				 %>	
				 <tr>
				 	<td><%=rs.getString(1)%></td>
				 	<td><%=rs.getString(2)%></td>
				 	<td><%=date%></td>
				 	<td><%=rs.getString(4)%></td>
				 	<td><%=rs.getString(5)%></td>
				 	<td><%=rs.getString(6)%></td>
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