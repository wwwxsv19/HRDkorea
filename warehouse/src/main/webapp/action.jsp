<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
	
String num = request.getParameter("num");
String pcode = request.getParameter("pcode");
String type = request.getParameter("type");
String cnt = request.getParameter("cnt");
String date = request.getParameter("date");
String company = request.getParameter("company");
if(company.equals("서울공장")) company="10";
if(company.equals("울산공장")) company="20";
if(company.equals("부산상사")) company="30";
if(company.equals("광주상사")) company="40";
if(company.equals("대전상사")) company="50";

try {
	String query = "insert into inout values(?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(query);
	
	pstmt.setString(1, num);
	pstmt.setString(2, pcode);
	pstmt.setString(3, type);
	pstmt.setString(4, cnt);
	pstmt.setString(5, date);
	pstmt.setString(6, company);
	
	pstmt.executeUpdate();
	
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%
} catch(Exception e) {
	e.printStackTrace();
}

%>