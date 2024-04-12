<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>list</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<h1>참가자 목록 조회</h1>
	<form>
		<table border=1>	
			<tr>
				<td>과목코드</td>
				<td>과목명</td>
				<td>학점</td>
				<td>담당강사</td>
				<td>요일</td>
				<td>시작시간</td>
				<td>종료시간</td>
				<td>삭제</td>
			</tr>
			<% 
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select id, crs.name, credit, lct.name, week, startHour, endHour "
						+ "from crsTbl crs, lctTbl lct "
						+ "where crs.lecturer = lct.idx";
				PreparedStatement pt = conn.prepareStatement(query); // 쿼리 실행 준비
				ResultSet rs = pt.executeQuery(); // 쿼리 실행 및 결과 가져오기
				
				while(rs.next()) { // 결과 셋에서 각 행을 반복해 보자!
					String week = rs.getString(5);
					if(week.equals("1")) week = "월요일";
					else if(week.equals("2")) week = "화요일";
					else if(week.equals("3")) week = "수요일";
					else if(week.equals("4")) week = "목요일";
					else week = "금요일";
					
					String sh = rs.getString(6);
					String startHour = sh.substring(0, 2) + "시" + sh.substring(2, 4) + "분";
					String eh = rs.getString(7);
					String endHour = eh.substring(0, 2) + "시" + eh.substring(2, 4) + "분";
					
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=week%></td>
						<td><%=startHour%></td>
						<td><%=endHour%></td>
						<td>삭제</td>
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