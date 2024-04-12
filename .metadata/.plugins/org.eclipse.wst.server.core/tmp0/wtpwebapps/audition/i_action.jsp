<%@ include file="dbConnection.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");

String artistId = request.getParameter("artist_id");
String artistName = request.getParameter("artist_name");

String dateY = request.getParameter("dateY");
String dateM = request.getParameter("dateM"); if(dateM.length() < 2) dateM = "0" + dateM;
String dateD = request.getParameter("dateD"); if(dateD.length() < 2) dateD = "0" + dateD;
String date = dateY + dateM + dateD;

String gender = request.getParameter("gender");
String talent = request.getParameter("talent");
String agency = request.getParameter("agency");

try {
	String query = "insert into tbl_artist_201905 values(?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(query);
	
	pstmt.setString(1, artistId);
	pstmt.setString(2, artistName);
	pstmt.setString(3, date);
	pstmt.setString(4, gender);
	pstmt.setString(5, talent);
	pstmt.setString(6, agency);
	
	pstmt.executeUpdate();
	%>
	<jsp:forward page="insert.jsp"></jsp:forward>
	<%
} catch(Exception e) {
	e.printStackTrace();
}
%>