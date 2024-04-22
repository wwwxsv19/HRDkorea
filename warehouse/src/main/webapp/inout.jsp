<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>inout</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>입출고내역조회</h1>
	<form>
	<table border=1>
		<tr>
			<td>입출고 번호</td>
			<td>제품코드</td>
			<td>제품명</td>
			<td>입출고 구분</td>
			<td>수량</td>
			<td>거래처</td>
			<td>거래일자</td>
		</tr>
		<% 
		request.setCharacterEncoding("UTF-8");
		
		try {
			String query = "select tno, inout.pcode, pname, ttype, tcnt, company.cname, tdate "
					+ "from product, company, inout "
					+ "where inout.pcode = product.pcode and company.ccode = inout.ccode";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String type = rs.getString(4);
				if(type.equals("I")) type="입고";
				else type="출고";
				
				String dt = rs.getString(7);
				String date = dt.substring(0, 10);
				%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= type %></td>
					<td><%= rs.getInt(5) %></td>
					<td><%= rs.getString(6) %></td>
					<td><%= date %></td>
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