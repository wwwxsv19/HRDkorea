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
	<h1>교과목 추가</h1>
	<form name="frm" action="action.jsp" method="get">
	<table border=1>
		<tr>
			<td>과목 코드</td>
			<td style="text-align : left">
				<input type="text" name="id">
			</td>
		</tr>
		<tr>
			<td>과목명</td>
			<td style="text-align : left">
				<input type="text" name="name">
			</td>
		</tr>			
		<tr>
			<td>학점</td>
			<td style="text-align : left">
				<input type="text" name="score">
			</td>
		</tr>
		<tr>
			<td>담당 강사</td>
			<td style="text-align : left">
				<select name="teacher">
					<option value="">담당 강사</option>
					<option value="1">진국어</option>
					<option value="2">차영어</option>
					<option value="3">구전공</option>
					<option value="4">손전공</option>
					<option value="5">이전공</option>
					<option value="6">김전공</option>
				</select>
			</td>
		</tr>			
		<tr>
			<td>요일</td>
			<td style="text-align : left">
				<input type="radio" name="weekday" value="1">월요일
				<input type="radio" name="weekday" value="2">화요일
				<input type="radio" name="weekday" value="3">수요일
				<input type="radio" name="weekday" value="4">목요일
				<input type="radio" name="weekday" value="5">금요일
			</td>
		</tr>
		<tr>
			<td>시작 시간</td>
			<td style="text-align : left">
				<input type="text" name="shour">
			</td>
		</tr>			
		<tr>
			<td>종료 시간</td>
			<td style="text-align : left">
				<input type="text" name="ehour">
			</td>
		</tr>
		<tr>
			<td colspan = 2>
				<input type="submit" value="추가" onclick="check()">
				<input type="button" value="조회" onclick="toList()">
			</td>
		</tr>			
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>