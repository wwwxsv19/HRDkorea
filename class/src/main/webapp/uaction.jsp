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
	String query = "update subject set name = ?, score = ?, teacher = ?, weekday = ?, shour = ?, ehour = ? where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, name);
	pstmt.setString(2, score);
	pstmt.setString(3, teacher);
	pstmt.setString(4, weekday);
	pstmt.setString(5, shour);
	pstmt.setString(6, ehour);
	pstmt.setString(7, id);
	pstmt.executeUpdate();
	%>
	
	<jsp:forward page="list.jsp"></jsp:forward>
	
	<%
	
} catch(Exception e) {
	e.printStackTrace();
}
%>