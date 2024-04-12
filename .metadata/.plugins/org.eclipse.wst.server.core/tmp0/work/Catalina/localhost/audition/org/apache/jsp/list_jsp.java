/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.19
 * Generated at: 2024-03-21 06:30:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import java.sql.*;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/dbConnection.jsp", Long.valueOf(1711002023287L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write(' ');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection(
			"jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");

      out.write("\r\n");
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("	<meta charset=\"UTF-8\">\r\n");
      out.write("	<title>Audition_list</title>\r\n");
      out.write("	<link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("	<section>\r\n");
      out.write("	<h1>참가자 목록 조회</h1>\r\n");
      out.write("	<form>\r\n");
      out.write("		<table border=1>	\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>참가번호</td>\r\n");
      out.write("				<td>참가자명</td>\r\n");
      out.write("				<td>생년월일</td>\r\n");
      out.write("				<td>성별</td>\r\n");
      out.write("				<td>특기</td>\r\n");
      out.write("				<td>소속사</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			");
 
			request.setCharacterEncoding("UTF-8");
			try {
				String query = "select * from tbl_artist_201905 order by artist_id"; // 쿼리문 : 싹 다 대문자거나 소문자거나!!!!
				PreparedStatement pt = conn.prepareStatement(query); // 쿼리 실행 준비
				ResultSet rs = pt.executeQuery(); // 쿼리 실행 및 결과 가져오기
				
				// System.out.println(rs.getString(1));
				
				while(rs.next()) { // 결과 셋에서 각 행을 반복해 보자!
					String bth = rs.getString(3);
					String birth = bth.substring(0, 4) + '년' + bth.substring(4, 6) + '월' + bth.substring(6, 8) + '일';
					
					String gender = rs.getString(4);
					if ( gender.equals("F" )) gender = "여";
					else gender = "남";
					
					String talent = rs.getString(5);
					if ( talent.equals("1") ) talent = "보컬";
					else if ( talent.equals("2") ) talent = "댄스";
					else talent = "랩";
					
      out.write("\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td> ");
      out.print(rs.getString(1));
      out.write(" </td>\r\n");
      out.write("						<td> ");
      out.print(rs.getString(2));
      out.write(" </td>\r\n");
      out.write("						<td> ");
      out.print(birth);
      out.write(" </td>\r\n");
      out.write("						<td> ");
      out.print(gender);
      out.write(" </td>\r\n");
      out.write("						<td> ");
      out.print(talent);
      out.write(" </td>\r\n");
      out.write("						<td> ");
      out.print(rs.getString(6));
      out.write(" </td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					");

 				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
      out.write("\r\n");
      out.write("			\r\n");
      out.write("		</table>\r\n");
      out.write("	</form>\r\n");
      out.write("	</section>\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
