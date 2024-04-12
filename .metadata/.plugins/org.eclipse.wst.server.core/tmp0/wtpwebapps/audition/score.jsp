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
	<h1>멘토 점수 조회</h1>
	<form>
		<table border=1>	
			<tr>
				<td>채점번호</td>
				<td>참가번호</td>
				<td>참가자명</td>
				<td>생년월일</td>
				<td>점수</td>
				<td>평점</td>
				<td>멘토명</td>
			</tr>
			<% 
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select serial_no, ar.artist_id, artist_name, birth, score, mento_name "
						+ "from tbl_artist_201905 ar, tbl_mento_201905 mt, tbl_point_201905 po "
						+ "where ar.artist_id = po.artist_id and mt.mento_id = po.mento_id "
						+ "order by serial_no"; // 쿼리문 : 싹 다 대문자거나 소문자거나!!!!
				PreparedStatement pt = conn.prepareStatement(query); // 쿼리 실행 준비
				ResultSet rs = pt.executeQuery(); // 쿼리 실행 및 결과 가져오기
				
				while(rs.next()) { // 결과 셋에서 각 행을 반복해 보자!
					String bth = rs.getString(4);
					String birth = bth.substring(0, 4) + '년' + bth.substring(4, 6) + '월' + bth.substring(6, 8) + '일';
					
					int score = rs.getInt(5);
					String grade;
					if ( score >= 90 ) grade = "A";
					else if ( score >= 80 ) grade = "B";
					else if ( score >= 70 ) grade = "C";
					else if ( score >= 60 ) grade = "D";
					else grade = "F";
					
					%>
					<tr>
						<td> <%=rs.getString(1)%> </td>
						<td> <%=rs.getString(2)%> </td>
						<td> <%=rs.getString(3)%> </td>
						<td> <%=birth%> </td>
						<td> <%=rs.getString(5)%> </td>
						<td> <%=grade%> </td>
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