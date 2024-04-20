<%@ include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
request.setCharacterEncoding("UTF-8");

try {
	String query = "update member set custname=?, phone=?, address=?, joindate=?, grade=?, city=? where custno = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	
	pstmt.setString(1, request.getParameter("custname"));
	pstmt.setString(2, request.getParameter("phone"));
	pstmt.setString(3, request.getParameter("address"));
	pstmt.setString(4, request.getParameter("joindate"));
	pstmt.setString(5, request.getParameter("grade"));
	pstmt.setString(6, request.getParameter("city"));
	pstmt.setInt(7, Integer.parseInt(request.getParameter("custno")));
	
	pstmt.executeUpdate();
	
	%>
	<jsp:forward page="list.jsp"></jsp:forward>
	<%
} catch(Exception e) {
	e.printStackTrace();
}

%>