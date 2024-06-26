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
	String query = "update player set pname=?, pposition=?, pdate=?, pgrade=? where pid=?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, pname);
	pstmt.setString(2, pposition);
	pstmt.setString(3, pdate);
	pstmt.setString(4, pgrade);
	pstmt.setString(5, pid);
	pstmt.executeUpdate();
	%>
	<jsp:forward page="list.jsp"></jsp:forward>
	<%
} catch(Exception e) {
	e.printStackTrace();
}
%>