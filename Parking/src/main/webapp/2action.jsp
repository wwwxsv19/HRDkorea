<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String carNum = request.getParameter("carNum");
	String ownerName = request.getParameter("ownerName");
	String location = request.getParameter("location");
	String entTime = request.getParameter("entTime");

	try {
		String query = "insert into parking values(?, ?, ?, ?)";
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, carNum);
		pstmt.setString(2, location);
		pstmt.setString(3, entTime);
		pstmt.setString(4, " ");		
		
		pstmt.executeUpdate();
		
		%>
		<jsp:forward page="insert.jsp"></jsp:forward>
		<%

	} catch (Exception e) {
		e.printStackTrace();
	}
%>