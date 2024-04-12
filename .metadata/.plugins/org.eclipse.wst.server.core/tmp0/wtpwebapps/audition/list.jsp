 <%@ include file="dbConnection.jsp" %>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Audition_list</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<h1>참가자 목록 조회</h1>
	<form>
		<table border=1>	
			<tr>
				<td>참가번호</td>
				<td>참가자명</td>
				<td>생년월일</td>
				<td>성별</td>
				<td>특기</td>
				<td>소속사</td>
			</tr>
			<% 
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select * from tbl_artist_201905 order by artist_id"; // 쿼리문 : 싹 다 대문자거나 소문자거나!!!!
				PreparedStatement pt = conn.prepareStatement(query); // 쿼리 실행 준비
				ResultSet rs = pt.executeQuery(); // 쿼리 실행 및 결과 가져오기
				
				// System.out.println(rs.getString(1));
				
				while(rs.next()) { // 결과 셋에서 각 행을 반복해 보자!
					String bth = rs.getString(3);
					String birth = bth.substring(0, 4) + '년' + bth.substring(4, 6) + '월' + bth.substring(6, 8) + '일';
					
					String gender = rs.getString(4);
					if ( gender.equals("F" )) gender = "여";
					else gender = "남";
					
					String talent = rs.getString(5);
					if ( talent.equals("1") ) talent = "보컬";
					else if ( talent.equals("2") ) talent = "댄스";
					else talent = "랩";
					%>
					<tr>
						<td> <%=rs.getString(1)%> </td>
						<td> <%=rs.getString(2)%> </td>
						<td> <%=birth%> </td>
						<td> <%=gender%> </td>
						<td> <%=talent%> </td>
						<td> <%=rs.getString(6)%> </td>
					</tr>
					<%
 				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			%>
			
		</table>
	</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>