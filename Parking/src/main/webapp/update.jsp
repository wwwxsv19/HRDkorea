<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>update</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>차량 출차</h1>
	<form name="frm1" action="action.jsp" method="get">
	<table border=1>
		<tr>
			<td style="text-align : left;">차량번호</td>
			<td style="text-align : left;">
				<select name="carNum">
				<% 
					request.setCharacterEncoding("UTF-8");
					try {
						String query = "select carNum from car";
						PreparedStatement pstmt = conn.prepareStatement(query);
						ResultSet rs = pstmt.executeQuery();
						
						while(rs.next()) {
						%>
							<option value="<%= rs.getString(1) %>"><%= rs.getString(1) %></option>
						<%	
						}
					} catch(Exception e) {
						e.printStackTrace();
					}
				%>
				</select>
			</td>
		</tr>
		<tr>
			<td style="text-align : left;">소유자 이름</td>
			<td style="text-align : left;">
				<input type="text" value="" readonly>
			</td>
		</tr>
		<tr>
			<td style="text-align : left;">출차 시간</td>
			<td style="text-align : left;">
				<input type="text" name="depTime">예) 22:03			
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="submit" value="출차등록" onclick="updateCheck()">
				<input type="button" value="다시 쓰기" onclick="updateRes()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>