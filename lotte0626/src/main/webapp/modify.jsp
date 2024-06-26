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
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>롯데자이언츠 선수 목록</h1>
	<form name="mfrm" action="mAction.jsp" method="get">
	<table border=1>
		<tr>
			<td>선수 번호</td>
			<% 
			request.setCharacterEncoding("UTF-8");
			String pid = request.getParameter("pid");
			String pname = "";
			String pposition = "";
			String pdate = "";
			String pgrade = "";
			try {
				String query = "select * from player where pid = ?";
				PreparedStatement pstmt = conn.prepareStatement(query);
				pstmt.setString(1, pid);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					pname = rs.getString(2);
					pposition = rs.getString(3);
					pdate = rs.getString(4);
					pgrade = rs.getString(5);
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
				<input type="text" name="pname" value="<%= pname %>">
			</td>
		</tr>
		<tr>
			<td>선수 포지션</td>
			<td style="text-align : left">
				<select name="pposition">
					<option value="">포지션 선택</option>
					<option value="투수"<%if(pposition.equals("투수")) out.println("selected='selected'");%>>투수</option>
					<option value="내야수"<%if(pposition.equals("내야수")) out.println("selected='selected'");%>>내야수</option>
					<option value="외야수"<%if(pposition.equals("외야수")) out.println("selected='selected'");%>>외야수</option>
					<option value="포수"<%if(pposition.equals("포수")) out.println("selected='selected'");%>>포수</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>선수 등록일</td>
			<td style="text-align : left">
				<input type="text" name="pdate" value="<%= pdate %>">
			</td>
		</tr>
		<tr>
			<td>선수 등급</td>
			<td style="text-align : left">
				<input type="radio" name="pgrade" value="S" <%if(pgrade.equals("S")) out.println("checked='checked'");%>>S
				<input type="radio" name="pgrade" value="A" <%if(pgrade.equals("A")) out.println("checked='checked'");%>>A
				<input type="radio" name="pgrade" value="B" <%if(pgrade.equals("B")) out.println("checked='checked'");%>>B
				<input type="radio" name="pgrade" value="C" <%if(pgrade.equals("C")) out.println("checked='checked'");%>>C
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="button" value="수정" onclick="mcheck()">
				<input type="button" value="취소" onclick="can()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>