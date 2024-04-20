<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modify</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<% 
	request.setCharacterEncoding("UTF-8");
	int custno = 0;
	String custname = "";
	String phone = "";
	String address = "";
	String joindate = ""; 
	String grade = ""; 
	String city = "";
	
	try {
		String query = "select * from member where custno = ?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, Integer.parseInt(request.getParameter("custno")));
		
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()){
			custno = rs.getInt(1);
			custname = rs.getString(2);
			phone = rs.getString(3);
			address = rs.getString(4);
			String date = rs.getString(5);
			joindate = date.substring(0, 10);
			grade = rs.getString(6); 
			city = rs.getString(7);
			
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	<h1>홈쇼핑 회원 등록</h1>
	<form name="frm1" action="uAction.jsp" method="get">
	<table border="1">
		<tr>
			<td>회원번호(자동발생)</td>
			<td><input type="number" value="<%= custno %>" name="custno"></td>
		</tr>
		<tr>
			<td>회원성명</td>
			<td><input type="text" value="<%= custname %>"name="custname"></td>
		</tr>
		<tr>
			<td>회원전화</td>
			<td><input type="text" value="<%= phone %>"name="phone"></td>
		</tr>
		<tr>
			<td>회원주소</td>
			<td><input type="text" value="<%= address %>"name="address"></td>
		</tr>
		<tr>
			<td>가입일자</td>
			<td><input type="text" value="<%= joindate %>"name="joindate"></td>
		</tr>
		<tr>
			<td>고객등급 [A:VIP, B:일반, C:직원]</td>
			<td><input type="text" value="<%= grade %>"name="grade"></td>
		</tr>
		<tr>
			<td>도시코드</td>
			<td><input type="text" value="<%= city %>"name="city"></td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="button" value="수정" onclick="check1()">
				<input type="button" value="조회" onclick="goList()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>