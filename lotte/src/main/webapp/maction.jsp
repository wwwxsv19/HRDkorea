<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");

String pid = request.getParameter("pid");
String pname = request.getParameter("pname");
String pposition = request.getParameter("pposition");
String pdate = request.getParameter("pdate");
String pgrade = request.getParameter("pgrade");

try {
	String query = "update player set pid = ?, pname = ?, pposition = ?, pdate = ?, pgrade = ? where pid = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	
	pstmt.setString(1, pid);
	pstmt.setString(2, pname);
	pstmt.setString(3, pposition);
	pstmt.setString(4, pdate);
	pstmt.setString(5, pgrade);	
	pstmt.setString(6, pid);
	
	pstmt.executeUpdate();
	
	%>
	<jsp:forward page="list.jsp"></jsp:forward>
	<%
} catch(Exception e) {
	e.printStackTrace();
}

%>