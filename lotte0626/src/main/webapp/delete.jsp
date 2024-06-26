<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String pid = request.getParameter("pid");

try {
	String query = "delete from player where pid = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, pid);
	pstmt.executeUpdate();
	%>
	<jsp:forward page="list.jsp"></jsp:forward>
	<%
} catch(Exception e) {
	e.printStackTrace();
}
%>