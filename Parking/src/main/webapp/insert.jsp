<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>insert</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>차량 입차</h1>
	<form name="frm2" action="2action.jsp" method="get">
	<table border=1>
		<tr>
			<td>차량번호</td>
			<td style="text-align : left;">
				<input type="text" name="carNum">예) 22가 1111
			</td>
		</tr>
		<tr>
			<td>소유자 이름</td>
			<td style="text-align : left;">
				<input type="text" name="ownerName">예) 백선수
			</td>
		</tr>
		<tr>
			<td>주차 위치 선택</td>
			<td style="text-align : left;">
				<input type="radio" name="location" value="A001">A001			
				<input type="radio" name="location" value="A002">A002			
				<input type="radio" name="location" value="A003">A003			
				<input type="radio" name="location" value="A004">A004			
				<input type="radio" name="location" value="A005">A005
			</td>
		</tr>
		<tr>
			<td>입차 시간</td>
			<td style="text-align : left;">
				<input type="text" name="entTime">예) 22:22		
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="submit" value="입차등록" onclick="insertCheck()">
				<input type="button" value="다시 쓰기" onclick="insertRes()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>