<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");

String empno = request.getParameter("empno");

try {
	String query = "select * from empTbl where empno = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	
	pstmt.setString(1, empno);
	
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()) {
		empno = rs.getString(1);
		%>
		<jsp:forward page="list_found.jsp"></jsp:forward>
		<%
	} else {
		%>
		<jsp:forward page="list_notfound.jsp"></jsp:forward>
		<%
	}
} catch(Exception e) {
	e.printStackTrace();
}

%>