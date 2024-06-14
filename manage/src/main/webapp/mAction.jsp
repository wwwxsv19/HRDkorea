<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");

String pid = request.getParameter("pid");
String pname = request.getParameter("pname");
String position = request.getParameter("position");
String pdate = request.getParameter("pdate");
String tid = request.getParameter("tid");

try {
	String query = "update player set pname=?, position=?, pdate=?, tid=? where pid = ?";
	
	PreparedStatement pstmt = conn.prepareStatement(query);

	pstmt.setString(1, pname);
	pstmt.setString(2, position);
	pstmt.setString(3, pdate);
	pstmt.setString(4, tid);
	pstmt.setString(5, pid);
	pstmt.executeUpdate();
	
	%>
	
	<jsp:forward page="lists.jsp"></jsp:forward>
	
	<%
} catch(Exception e) {
	e.printStackTrace();
}

%>