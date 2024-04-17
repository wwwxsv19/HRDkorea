<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id"); 
	String code = request.getParameter("code"); 
	if (code.equals("1")) code = "A001";
	else if (code.equals("2")) code = "A002";
	else if (code.equals("3")) code = "A003";
	else if (code.equals("4")) code = "A004";
	else code = "A005";
	
	String mid = request.getParameter("mid");
	String fin = request.getParameter("fin");
	String att = request.getParameter("att");
	String rep = request.getParameter("rep");
	String etc = request.getParameter("etc");
	
	try {
		String query = "insert into score values(?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		pstmt.setString(1, id);
		pstmt.setString(2, code);
		pstmt.setString(3, mid);
		pstmt.setString(4, fin);
		pstmt.setString(5, att);
		pstmt.setString(6, rep);
		pstmt.setString(7, etc);
		
		pstmt.executeUpdate();
		%>
		<jsp:forward page="input.jsp"></jsp:forward>
		<%
	} catch (Exception e) {
		e.printStackTrace();
	}
%>