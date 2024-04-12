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
	<h1>좌석예약조회</h1>
	<form name="frm" action="raction.jsp" method="get">
	<table border="1">
		<tr>
			<td>사원번호를 입력하십시오.</td>
			<td style="text-align : left">
				<input type="text" name="empno">
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align : center">
				<input type="button" value="좌석예약조회" onclick="readCheck()">
				<input type="button" value="홈으로" onclick="goHome()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>