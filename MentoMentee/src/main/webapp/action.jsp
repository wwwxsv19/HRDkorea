<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String eid = request.getParameter("eid");
	String ename = request.getParameter("ename");
	
	String num = request.getParameter("num");
	String grade = num.substring(0, 1);
	String classnum = num.substring(3, 4);
	
	String phone = request.getParameter("phone");
	
	String eclass = request.getParameter("eclass");
	if(eclass.equals("1")) eclass = "A001";
	else if(eclass.equals("2")) eclass = "A002";
	else if(eclass.equals("3")) eclass = "A003";
	else eclass = "A004";

	try {
		String query = "insert into mentee values(?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, eid);
		pstmt.setString(2, ename);
		pstmt.setString(3, grade);
		pstmt.setString(4, classnum);
		pstmt.setString(5, phone);
		pstmt.setString(6, eclass);
		pstmt.executeUpdate();
		%>
		<jsp:forward page="insert.jsp"></jsp:forward>
		<%
	} catch(Exception e) {
		e.printStackTrace();
	}
%>