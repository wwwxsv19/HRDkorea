<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>좌석예매 정보가 존재하지 않습니다.</h1>
	<input type="button" value="돌아가기" onclick="goList()">
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>