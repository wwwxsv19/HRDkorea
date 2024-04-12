<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>input</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>성적 입력</h1>
	<form name="frm" action="action.jsp" method="get">
		<table border=1>
		<tr>
			<td>학번</td>
			<td>
				<input type="text" name="id"> 
			</td>
		</tr>
		<tr>
			<td>교과코드</td>
			<td>
				<select name="code">
					<option value="1">A001-자바</option>
					<option value="1">A002-C언어</option>
					<option value="1">A003-데이터베이스</option>
					<option value="1">A004-웹프로그래밍</option>
					<option value="1">A005-영어</option>
				</select> 
			</td>
		</tr>
		<tr>
			<td>중간</td>
			<td>
				<input type="text" name="mid"> 
			</td>
		</tr>
		<tr>
			<td>기말</td>
			<td>
				<input type="text" name="fin"> 
			</td>
		</tr>
		<tr>
			<td>출석</td>
			<td>
				<input type="text" name="att"> 
			</td>
		</tr>
		<tr>
			<td>레포트</td>
			<td>
				<input type="text" name="rep"> 
			</td>
		</tr>
		<tr>
			<td>기타</td>
			<td>
				<input type="text" name="etc"> 
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="button" onclick="check()" value="등록">
				<input type="button" onclick="res()" value="다시쓰기">
			</td>
		</tr>
		</table>
	</form>	
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>