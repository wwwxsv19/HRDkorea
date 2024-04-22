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
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>입출고등록</h1>
	<% 
	request.setCharacterEncoding("UTF-8");
	
	String no="";
	
	try {
		String query = "select max(tno) from inout";
		PreparedStatement pstmt = conn.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			int num = Integer.parseInt(rs.getString(1));
			num++;
			no = Integer.toString(num);
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	<form name="frm" action="action.jsp" method="get">
	<table border=1>
		<tr>
			<td>입출고번호</td>
			<td style="text-align:left;"><input type="text" name="num" value="<%= no %>"> 예 ) 20210001</td>
		</tr>
		<tr>
			<td>제품코드</td>
			<td style="text-align:left;"><input type="text" name="pcode"></td>
		</tr>
		<tr>
			<td>입출고구분</td>
			<td style="text-align:left;">
				<input type="radio" name="type" value="I" checked>입고
				<input type="radio" name="type" value="O">출고
			</td>
		</tr>
		<tr>
			<td>수량</td>
			<td style="text-align:left;"><input type="text" name="cnt"></td>
		</tr>
		<tr>
			<td>거래일자</td>
			<td style="text-align:left;"><input type="text" name="date"></td>
		</tr>
		<tr>
			<td>거래처</td>
			<td style="text-align:left;">
				<select name="company">
					<option value=""></option>
					<option value="서울공장">서울공장</option>
					<option value="울산공장">울산공장</option>
					<option value="부산상사">부산상사</option>
					<option value="광주상사">광주상사</option>
					<option value="대전상사">대전상사</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="button" value="입출고등록" onclick="check()">
				<input type="button" value="다시쓰기" onclick="res()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>