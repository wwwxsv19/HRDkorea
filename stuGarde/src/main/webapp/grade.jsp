<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>grade</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>성적현황</h1>
	<table border=1>
		<tr>
			<td>학번</td>
			<td>성명</td>
			<td>교과목</td>
			<td>교과목코드</td>
			<td>담당교수</td>
			<td>중간</td>
			<td>기말</td>
			<td>출석</td>
			<td>레포트</td>
			<td>기타</td>
			<td>평균</td>
			<td>총점</td>
			<td>학점</td>
		</tr>
		<% 
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select stuInfor.stuid, sname, subname, scoreInfor.subcode, proname, midscore, finalscore, attend, report, etc, "
						+ "to_char((midscore+finalscore+attend+report+etc)/5, '999'), "
						+ "to_char(midscore*0.3 + finalscore*0.3 + attend*0.2 + report*0.1 + etc*0.1, '999.0'), "
						+ "midscore*0.3 + finalscore*0.3 + attend*0.2 + report*0.1 + etc*0.1 "
						+ "from stuInfor, scoreInfor, subInfor "
						+ "where stuInfor.stuid = scoreInfor.sid and scoreInfor.subcode = subInfor.subcode "
						+ "order by sname";
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					String score;
					
					int sc = rs.getInt(13);
					if (sc >= 95) score = "A+";
					else if (sc >= 90) score = "A";
					else if (sc >= 85) score = "B+";
					else if (sc >= 80) score = "B";
					else if (sc >= 75) score = "C+";
					else score = "C";
					
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getString(9)%></td>
						<td><%=rs.getString(10)%></td>
						<td><%=rs.getString(11)%></td>
						<td><%=rs.getString(12)%></td>
						<td><%=score%></td>
					</tr>
					<% 
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>