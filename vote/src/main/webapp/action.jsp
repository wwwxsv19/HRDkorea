<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");

try {
	String query = "insert into vote values(?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(query);
	
	pstmt.setString(1, request.getParameter("jumin"));
	pstmt.setString(2, request.getParameter("name"));
	pstmt.setString(3, request.getParameter("num"));
	pstmt.setString(4, request.getParameter("time"));
	pstmt.setString(5, request.getParameter("area"));
	pstmt.setString(6, request.getParameter("confirm"));
	
	pstmt.executeUpdate();
	
	%>
	<jsp:forward page="insert.jsp"></jsp:forward>
	<%
} catch(Exception e) {
	e.printStackTrace();
}
%>