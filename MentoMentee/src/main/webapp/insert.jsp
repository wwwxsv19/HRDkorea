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
	<h1>멘티 신청서 작성</h1>
	<form name="frm" action="action.jsp" method="get">
	<table border=1>
		<tr>
			<td>고유 ID</td>
			<td><input type="text" placeholder="2글자" name="eid"></td>
		</tr>
		<tr>
			<td>학생명</td>
			<td><input type="text" name="ename"></td>
		</tr>
		<tr>
			<td>학번</td>
			<td><input type="text" placeholder="ex : X학년-X반" name="num"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" placeholder="ex : 010-XXXX-XXXX" name="phone"></td>
		</tr>
		<tr>
			<td>희망 수업</td>
			<td><select name="eclass">
				<option value="">선택...</option>
				<option value="1">전자회로</option>
				<option value="2">임베디드시스템</option>
				<option value="3">디자인일반</option>
				<option value="4">웹프로그래밍</option>
			</select></td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="button" value="신청하기" onclick="check()">
				<input type="button" value="취소" onclick="res()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>