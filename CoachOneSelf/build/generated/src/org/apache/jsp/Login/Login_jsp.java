package org.apache.jsp.Login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!--\n");
      out.write("Author: W3layouts\n");
      out.write("Author URL: http://w3layouts.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\t\n");
      out.write("<head>\n");
      out.write("\t<title>The Login-Animated Website Template | Home :: w3layouts</title>\n");
      out.write("\t\t<meta charset=\"utf-8\">\n");
      out.write("\t\t<link href=\"css/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\t<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("\t\t<!--webfonts-->\n");
      out.write("\t\t<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>\n");
      out.write("\t\t<!--//webfonts-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t\n");
      out.write("\t\t\t\t <!-----start-main---->\n");
      out.write("\t\t\t\t<div class=\"login-form\">\n");
      out.write("\t\t\t\t\t<div class=\"head\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/mem2.jpg\" alt=\"\"/>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t<form>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"text\" value=\"USERNAME\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'USERNAME';}\" ><a href=\"#\" class=\" icon user\"></a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<input type=\"password\" value=\"Password\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Password';}\"><a href=\"#\" class=\" icon lock\"></a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<div class=\"p-container\">\n");
      out.write("\t\t\t\t\t\t\t\t<label class=\"checkbox\"><input type=\"checkbox\" name=\"checkbox\" checked><i></i>Remember Me</label>\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"submit\" onclick=\"myFunction()\" value=\"SIGN IN\" >\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!--//End-login-form-->\n");
      out.write("\t\t  <!-----start-copyright---->\n");
      out.write("   \t\t\t\t\t<div class=\"copy-right\">\n");
      out.write("\t\t\t\t\t\t<p>Template by <a href=\"http://w3layouts.com\">w3layouts</a></p> \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-----//end-copyright---->\n");
      out.write("\t\t \t\t\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
