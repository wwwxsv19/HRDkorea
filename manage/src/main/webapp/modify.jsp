<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modify</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>>
<section>
	<h1>등록된 선수 정보 수정</h1>
	<% 
	
	request.setCharacterEncoding("UTF-8");
	String pid = request.getParameter("pid");
	String pname = "";
	String position = "";
	String pdate = "";
	String tid = "";
	
	try {
		String query = "select * from player where pid = ?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, pid);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			pname = rs.getString(2);
			position = rs.getString(3);
			pdate = rs.getString(4);
			tid = rs.getString(5);
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	%>
	<form name="frm2" action="mAction.jsp" method="get">
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
				<input type="text" name="pname" value="<%= pname %>">
			</td>
		</tr>
		<tr>
			<td>포지션</td>
			<td>
			<input type="radio" name="position" value="GK" <%if(position.equals("GK")) out.println("checked");%>>골키퍼
			<input type="radio" name="position" value="DF" <%if(position.equals("DF")) out.println("checked");%>>수비수
			<input type="radio" name="position" value="MF" <%if(position.equals("MF")) out.println("checked");%>>미드필더
			<input type="radio" name="position" value="FW" <%if(position.equals("FW")) out.println("checked");%>>공격수
			</td>
		</tr>
		<tr>
			<td>선수 등록일</td>
			<td>
				<input type="text" name="pdate" value="<%= pdate %>">
			</td>
		</tr>
		<tr>
			<td>소속 팀</td>
			<td>
				<select name="tid">
					<option value="K00" <%if(tid.equals("K00")) out.println("selected='selected'");%>>무소속</option>
					<option value="K01" <%if(tid.equals("K01")) out.println("selected='selected'");%>>울산현대</option>
					<option value="K02" <%if(tid.equals("K02")) out.println("selected='selected'");%>>삼성블루윙즈</option>
					<option value="K03" <%if(tid.equals("K03")) out.println("selected='selected'");%>>스틸러스</option>
					<option value="K04" <%if(tid.equals("K04")) out.println("selected='selected'");%>>유나이티드</option>
					<option value="K05" <%if(tid.equals("K05")) out.println("selected='selected'");%>>현대모터스</option>
					<option value="K06" <%if(tid.equals("K06")) out.println("selected='selected'");%>>부산소마고</option>
					<option value="K07" <%if(tid.equals("K07")) out.println("selected='selected'");%>>드래곤즈</option>
					<option value="K08" <%if(tid.equals("K08")) out.println("selected='selected'");%>>일화천마</option>
					<option value="K09" <%if(tid.equals("K09")) out.println("selected='selected'");%>>FC서울</option>
					<option value="K10" <%if(tid.equals("K10")) out.println("selected='selected'");%>>시티즌</option>
					<option value="K11" <%if(tid.equals("K11")) out.println("selected='selected'");%>>경남FC</option>
					<option value="K12" <%if(tid.equals("K12")) out.println("selected='selected'");%>>광주상무</option>
					<option value="K13" <%if(tid.equals("K13")) out.println("selected='selected'");%>>강원FC</option>
					<option value="K14" <%if(tid.equals("K14")) out.println("selected='selected'");%>>제주유나이티드FC</option>
					<option value="K15" <%if(tid.equals("K15")) out.println("selected='selected'");%>>대구FC</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="button" value="수정" onclick="modifyCheck()">
				<input type="reset" value="취소" onclick="res2()">
			</td>
		</tr>
	</table>
	</form> 
</section>
<jsp:include page="footer.jsp"></jsp:include>>
</body>
</html>