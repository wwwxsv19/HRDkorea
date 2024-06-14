<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String carNum = request.getParameter("carNum");
	String depTime = request.getParameter("depTime");

	try {
		String query = "update parking set depTime = ? where carNum = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, depTime);
		pstmt.setString(2, carNum);
		
		pstmt.executeUpdate();
		
		%>
		<jsp:forward page="update.jsp"></jsp:forward>
		<%

	} catch (Exception e) {
		e.printStackTrace();
	}
%>