package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Loginform_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("   <head>\n");
      out.write("      <meta charset=\"utf-8\">\n");
      out.write("      <title>Login and Registration Form in HTML | CodingNepal</title>\n");
      out.write("      <link rel=\"stylesheet\" href=\"CSS/Loginstyle.css\">\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("   </head>\n");
      out.write("   <body>\n");
      out.write("      <div class=\"wrapper\">\n");
      out.write("         <div class=\"title-text\">\n");
      out.write("            <div class=\"title login\">\n");
      out.write("               Login Form\n");
      out.write("            </div>\n");
      out.write("            <div class=\"title signup\">\n");
      out.write("               Signup Form\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("         <div class=\"form-container\">\n");
      out.write("            <div class=\"slide-controls\">\n");
      out.write("               <input type=\"radio\" name=\"slide\" id=\"login\" checked>\n");
      out.write("               <input type=\"radio\" name=\"slide\" id=\"signup\">\n");
      out.write("               <label for=\"login\" class=\"slide login\">Login</label>\n");
      out.write("               <label for=\"signup\" class=\"slide signup\">Signup</label>\n");
      out.write("               <div class=\"slider-tab\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-inner\">\n");
      out.write("               <form action=\"#\" class=\"login\">\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"text\" placeholder=\"Email Address\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"password\" placeholder=\"Password\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"pass-link\">\n");
      out.write("                     <a href=\"#\">Forgot password?</a>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field btn\">\n");
      out.write("                     <div class=\"btn-layer\"></div>\n");
      out.write("                     <input type=\"submit\" value=\"Login\">\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"signup-link\">\n");
      out.write("                     Not a member? <a href=\"\">Signup now</a>\n");
      out.write("                  </div>\n");
      out.write("               </form>\n");
      out.write("               <form action=\"#\" class=\"signup\">\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"text\" placeholder=\"Email Address\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"password\" placeholder=\"Password\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"password\" placeholder=\"Confirm password\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field btn\">\n");
      out.write("                     <div class=\"btn-layer\"></div>\n");
      out.write("                     <input type=\"submit\" value=\"Signup\">\n");
      out.write("                  </div>\n");
      out.write("               </form>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("      <script>\n");
      out.write("         const loginText = document.querySelector(\".title-text .login\");\n");
      out.write("         const loginForm = document.querySelector(\"form.login\");\n");
      out.write("         const loginBtn = document.querySelector(\"label.login\");\n");
      out.write("         const signupBtn = document.querySelector(\"label.signup\");\n");
      out.write("         const signupLink = document.querySelector(\"form .signup-link a\");\n");
      out.write("         signupBtn.onclick = (()=>{\n");
      out.write("           loginForm.style.marginLeft = \"-50%\";\n");
      out.write("           loginText.style.marginLeft = \"-50%\";\n");
      out.write("         });\n");
      out.write("         loginBtn.onclick = (()=>{\n");
      out.write("           loginForm.style.marginLeft = \"0%\";\n");
      out.write("           loginText.style.marginLeft = \"0%\";\n");
      out.write("         });\n");
      out.write("         signupLink.onclick = (()=>{\n");
      out.write("           signupBtn.click();\n");
      out.write("           return false;\n");
      out.write("         });\n");
      out.write("      </script>\n");
      out.write("   </body>\n");
      out.write("</html>\n");
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
