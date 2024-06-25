<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");

String month = request.getParameter("month");
String mno = request.getParameter("mno");
String area = request.getParameter("area");
String cost = request.getParameter("cost");
String code = request.getParameter("code");

try {
	String query = "insert into class values(?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, month);
	pstmt.setString(2, mno);
	pstmt.setString(3, area);
	pstmt.setString(4, cost);
	pstmt.setString(5, code);
	
	pstmt.executeUpdate();
	
	%>
	<jsp:forward page="insert.jsp"></jsp:forward>
	<%
	
} catch(Exception e) {
	e.printStackTrace();
}

%>