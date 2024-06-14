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
	String query = "insert into player values(?, ?, ?, ?, ?)";
	
	PreparedStatement pstmt = conn.prepareStatement(query);
	
	pstmt.setString(1, pid);
	pstmt.setString(2, pname);
	pstmt.setString(3, position);
	pstmt.setString(4, pdate);
	pstmt.setString(5, tid);
	pstmt.executeUpdate();
	
	%>
	
	<jsp:forward page="insert.jsp"></jsp:forward>
	
	<%
} catch(Exception e) {
	e.printStackTrace();
}

%>