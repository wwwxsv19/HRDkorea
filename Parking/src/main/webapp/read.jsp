<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>read</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>차량 조회</h1>
	<form name="frm" action="list.jsp" method="get">
	<table border=1>
		<tr>
			<td style="text-align : left">차량번호를 입력하시오.</td>
			<td style="text-align : left">
				<input type="text" name="carNum">
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="submit" value="차량 조회" onclick="readCheck()">
				<input type="button" value="홈으로" onclick="home()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>