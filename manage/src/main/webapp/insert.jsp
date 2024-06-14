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
<jsp:include page="header.jsp"></jsp:include>>
<section>
	<h1>선수 등록</h1>
	<% 
	
	request.setCharacterEncoding("UTF-8");
	int pid = 0;
	
	try {
		String query = "select max(pid) from player";
		PreparedStatement pstmt = conn.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			pid = Integer.parseInt(rs.getString(1)) + 1;
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	%>
	<form name="frm1" action="iAction.jsp" method="get">
	<table border=1>
		<tr>
			<td>선수 ID</td>
			<td> 
				<input type="text" name="pid" value="<%= pid %>" readonly> 
			</td>
		</tr>
		<tr>
			<td>선수 이름</td>
			<td>
				<input type="text" name="pname">
			</td>
		</tr>
		<tr>
			<td>포지션</td>
			<td>
			<input type="radio" name="position" value="GK">골키퍼
			<input type="radio" name="position" value="DF">수비수
			<input type="radio" name="position" value="MF">미드필더
			<input type="radio" name="position" value="FW">공격수
			</td>
		</tr>
		<tr>
			<td>선수 등록일</td>
			<td>
				<input type="text" name="pdate">
			</td>
		</tr>
		<tr>
			<td>소속 팀</td>
			<td>
				<select name="tid">
					<option value="K00">무소속</option>
					<option value="K01">울산현대</option>
					<option value="K02">삼성블루윙즈</option>
					<option value="K03">스틸러스</option>
					<option value="K04">유나이티드</option>
					<option value="K05">현대모터스</option>
					<option value="K06">부산소마고</option>
					<option value="K07">드래곤즈</option>
					<option value="K08">일화천마</option>
					<option value="K09">FC서울</option>
					<option value="K10">시티즌</option>
					<option value="K11">경남FC</option>
					<option value="K12">광주상무</option>
					<option value="K13">강원FC</option>
					<option value="K14">제주유나이티드FC</option>
					<option value="K15">대구FC</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="button" value="추가" onclick="insertCheck()">
				<input type="reset" value="취소" onclick="res1()">
			</td>
		</tr>
	</table>
	</form> 
</section>
<jsp:include page="footer.jsp"></jsp:include>>
</body>
</html>