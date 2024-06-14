<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 

request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");

try {
	String query = "delete from subject where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, id);
	pstmt.executeUpdate();
	%>
	
	<jsp:forward page="list.jsp"></jsp:forward>
	
	<%
	
} catch(Exception e) {
	e.printStackTrace();
}
%>