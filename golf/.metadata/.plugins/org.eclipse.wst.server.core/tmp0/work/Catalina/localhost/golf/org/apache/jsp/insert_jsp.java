/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.43
 * Generated at: 2024-06-25 08:35:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class insert_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/db.jsp", Long.valueOf(1719301087478L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
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

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
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

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
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

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("\r\n");


Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection(
		"jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");


      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<title>insert</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<script type=\"text/javascript\" src=\"check.js\"></script>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("<section>\r\n");
      out.write("\t<h1>수강 신청</h1>\r\n");
      out.write("\t<form name=\"frm\" action=\"action.jsp\" method=\"get\">\r\n");
      out.write("\t\t<table border=1>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>수강월</td>\r\n");
      out.write("\t\t\t\t<td style=\"text-align : left\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"month\"> 2022년 03월 예)202203\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>회원명</td>\r\n");
      out.write("\t\t\t\t<td style=\"text-align : left\">\r\n");
      out.write("\t\t\t\t\t<select name=\"mname\" onchange=\"setNo(this.value)\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">회원명</option>\r\n");
      out.write("\t\t\t\t\t\t");

						request.setCharacterEncoding("UTF-8");
						try {
							PreparedStatement pstmt = conn.prepareStatement("select mno, mname from member");
							ResultSet rs = pstmt.executeQuery();
							while(rs.next()) {
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"");
      out.print( rs.getString(1) );
      out.write('"');
      out.write('>');
      out.print( rs.getString(2) );
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t");

							}
						} catch(Exception e) {
							e.printStackTrace();
						}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>회원 번호</td>\r\n");
      out.write("\t\t\t\t<td style=\"text-align : left\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" id=\"mno\" name=\"mno\" readonly> 예)10001\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>강의 장소</td>\r\n");
      out.write("\t\t\t\t<td style=\"text-align : left\">\r\n");
      out.write("\t\t\t\t\t<select name=\"area\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">강의 장소</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"서울본원\">서울본원</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"성남분원\">성남분원</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"대전분원\">대전분원</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"부산분원\">부산분원</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"대구분원\">대구분원</option>\r\n");
      out.write("\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>강의명</td>\r\n");
      out.write("\t\t\t\t<td style=\"text-align : left\">\r\n");
      out.write("\t\t\t\t\t<select name=\"code\" onchange=\"setCost(this.value)\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">강의명</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"100\">초급반</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"200\">중급반</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"300\">고급반</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"400\">심화반</option>\r\n");
      out.write("\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>수강료</td>\r\n");
      out.write("\t\t\t\t<td style=\"text-align : left\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" id=\"cost\" name=\"cost\" readonly> 원\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=2>\r\n");
      out.write("\t\t\t\t\t<input type=\"button\" value=\"수강 신청\" onclick=\"check()\">\r\n");
      out.write("\t\t\t\t\t<input type=\"button\" value=\"다시 쓰기\" onclick=\"res()\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</form>\r\n");
      out.write("</section>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
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
