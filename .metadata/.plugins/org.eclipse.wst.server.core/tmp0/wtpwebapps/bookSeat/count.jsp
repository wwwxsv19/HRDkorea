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
	
	<h1>부서별 근무일수 집계</h1>
	<form name="frm" action="raction.jsp" method="get">
	<table border="1">
		<tr>
			<td>사원번호</td>
			<td>이름</td>
			<td>부서명</td>
			<td>근무일수</td>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		try {
			String query = "select et.empno, empname, deptcode, count(resvno) "
							+ "from empTbl et, resvTbl rt "
	         				+ "where rt.empno = et.empno group by et.empno, empname, deptcode order by deptcode";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				 String team = rs.getString(3);
				 if(team.equals("10")) team = "영업팀";
				 else if(team.equals("20")) team = "총무팀";
				 else team = "구매팀";
				 %>	
				 <tr>
				 	<td><%=rs.getString(1)%></td>
				 	<td><%=rs.getString(2)%></td>
				 	<td><%=team%></td>
				 	<td><%=rs.getString(4)%></td>
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