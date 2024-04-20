<%@ include file="db.jsp" %>
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
	<h1>투표검수조회</h1>
	<form name="frm" action="action.jsp" method="get">
		<table border=1>
			<tr>
				<td>주민번호</td>
				<td style="text-align : left; padding-left : 2px"><input type="text" name="jumin"> 예 : 8906153154726</td>
			</tr>
			<tr>
				<td>성명</td>
				<td style="text-align : left; padding-left : 2px"><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>후보번호</td>
				<td style="text-align : left; padding-left : 2px">
					<select name="num">
						<option value=""></option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>투표시간</td>
				<td style="text-align : left; padding-left : 2px"><input type="text" name="time"></td>
			</tr>
			<tr>
				<td>투표장소</td>
				<td style="text-align : left; padding-left : 2px"><input type="text" name="area"></td>
			</tr>
			<tr>
				<td>유권자확인</td>
				<td style="text-align : left; padding-left : 0px">
					<input type="radio" name="confirm" value="Y">확인 
					<input type="radio" name="confirm" value="N">미확인
				</td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="button" value="투표하기" onclick="check()">
					<input type="button" value="다시하기" onclick="res()">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>