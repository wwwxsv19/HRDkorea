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
	<h1>롯데자이언츠 선수 목록</h1>
	<form name="ifrm" action="iAction.jsp" method="get">
	<table border=1>
		<tr>
			<td>선수 번호</td>
			<% 
			request.setCharacterEncoding("UTF-8");
			int pid = 0;
			try {
				String query = "select max(pid) from player";
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					pid = rs.getInt(1) + 1;
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			%>
			<td style="text-align : left">
				<input type="text" name="pid" value="<%= pid %>" readonly>
			</td>
		</tr>
		<tr>
			<td>선수 이름</td>
			<td style="text-align : left">
				<input type="text" name="pname">
			</td>
		</tr>
		<tr>
			<td>선수 포지션</td>
			<td style="text-align : left">
				<select name="pposition">
					<option value="">포지션 선택</option>
					<option value="투수">투수</option>
					<option value="내야수">내야수</option>
					<option value="외야수">외야수</option>
					<option value="포수">포수</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>선수 등록일</td>
			<td style="text-align : left">
				<input type="text" name="pdate">
			</td>
		</tr>
		<tr>
			<td>선수 등급</td>
			<td style="text-align : left">
				<input type="radio" name="pgrade" value="S">S
				<input type="radio" name="pgrade" value="A">A
				<input type="radio" name="pgrade" value="B">B
				<input type="radio" name="pgrade" value="C">C
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="button" value="등록" onclick="icheck()">
				<input type="button" value="다시 쓰기" onclick="res()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>