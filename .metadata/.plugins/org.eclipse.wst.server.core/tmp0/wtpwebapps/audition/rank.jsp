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
				<td>참가번호</td>
				<td>참가자명</td>
				<td>총점</td>
				<td>평균</td>
				<td>등수</td>
			</tr>
			<% 
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select po.artist_id, artist_name, sum(score), to_char(avg(score),'99.99'), rank() over(order by sum(score) desc) "
						+ "from tbl_artist_201905 ar, tbl_point_201905 po "
						+ "where ar.artist_id = po.artist_id "
						+ "group by po.artist_id, artist_name"; // 쿼리문 : 싹 다 대문자거나 소문자거나!!!!
				PreparedStatement pt = conn.prepareStatement(query); // 쿼리 실행 준비
				ResultSet rs = pt.executeQuery(); // 쿼리 실행 및 결과 가져오기
				
				while(rs.next()) { // 결과 셋에서 각 행을 반복해 보자!
					%>
					<tr>
						<td> <%=rs.getString(1)%> </td>
						<td> <%=rs.getString(2)%> </td>
						<td> <%=rs.getString(3)%> </td>
						<td> <%=rs.getString(4)%> </td>
						<td> <%=rs.getString(5)%> </td>
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