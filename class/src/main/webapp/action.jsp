<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 

request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String name = request.getParameter("name");
String score = request.getParameter("score");
String teacher = request.getParameter("teacher");
String weekday = request.getParameter("weekday");
String shour = request.getParameter("shour");
String ehour = request.getParameter("ehour");

try {
	String query = "insert into subject values(?, ?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, score);
	pstmt.setString(4, teacher);
	pstmt.setString(5, weekday);
	pstmt.setString(6, shour);
	pstmt.setString(7, ehour);
	pstmt.executeUpdate();
	%>
	
	<jsp:forward page="insert.jsp"></jsp:forward>
	
	<%
	
} catch(Exception e) {
	e.printStackTrace();
}
%>