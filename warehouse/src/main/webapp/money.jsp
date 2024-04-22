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
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>(제품별)출고매출이익통계</h1>
	<form>
	<table border=1>
		<tr>
			<td>제품코드</td>
			<td>제품명</td>
			<td>출고수량</td>
			<td>출고매출이익</td>
		</tr>
		<% 
		request.setCharacterEncoding("UTF-8");
		
		try {
			String query = "select inout.pcode, pname, tcnt, (tcnt * (poutcost - pincost)) "
					+ "from inout, product "
					+ "where ttype='O' and inout.pcode = product.pcode";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
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