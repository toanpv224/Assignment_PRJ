package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    \r\n");
      out.write("    <!----======== CSS ======== -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"CSS/style.css\">\r\n");
      out.write("    \r\n");
      out.write("    <!----===== Boxicons CSS ===== -->\r\n");
      out.write("    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>\r\n");
      out.write("    \r\n");
      out.write("    <title>Fashion for you</title> \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <nav class=\"sidebar close\">\r\n");
      out.write("        <header>\r\n");
      out.write("            <div class=\"image-text\">\r\n");
      out.write("                <span class=\"image\">\r\n");
      out.write("                    <img src=\"PNG/Hug.png\" alt=\"\">\r\n");
      out.write("                </span>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"text logo-text\">\r\n");
      out.write("                    <span class=\"name\">Take your love</span>\r\n");
      out.write("                    <span class=\"profession\">Luôn bên bạn</span>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <i class='bx bx-chevron-right toggle'></i>\r\n");
      out.write("        </header>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"menu-bar\">\r\n");
      out.write("            <div class=\"menu\">\r\n");
      out.write("\r\n");
      out.write("                <li class=\"search-box\">\r\n");
      out.write("                    <i class='bx bx-search icon'></i>\r\n");
      out.write("                    <input type=\"text\" placeholder=\"Tìm kiếm...\">\r\n");
      out.write("                </li>\r\n");
      out.write("\r\n");
      out.write("                <ul class=\"menu-links\">\r\n");
      out.write("                    <li class=\"nav-link\">\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <i class='bx bx-home-alt icon' ></i>\r\n");
      out.write("                            <span class=\"text nav-text\">Home</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li class=\"nav-link\">\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <i class='bx bx-user icon'></i>\r\n");
      out.write("                            <span class=\"text nav-text\">Cá nhân</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li class=\"nav-link\">\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <i class='bx bx-chat icon'></i>\r\n");
      out.write("                            <span class=\"text nav-text\">Tin nhắn</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li class=\"nav-link\">\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <i class='bx bx-bell icon'></i>\r\n");
      out.write("                            <span class=\"text nav-text\">Thông báo</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li class=\"nav-link\">\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <i class='bx bx-heart icon' ></i>\r\n");
      out.write("                            <span class=\"text nav-text\">Yêu thích</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li class=\"nav-link\">\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <i class='bx bx-wallet icon' ></i>\r\n");
      out.write("                            <span class=\"text nav-text\">Ví</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"bottom-content\">\r\n");
      out.write("                <li class=\"\">\r\n");
      out.write("                    <a href=\"#\">\r\n");
      out.write("                        <i class='bx bx-log-out icon' ></i>\r\n");
      out.write("                        <span class=\"text nav-text\">Đăng xuất</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("\r\n");
      out.write("                <li class=\"mode\">\r\n");
      out.write("                    <div class=\"sun-moon\">\r\n");
      out.write("                        <i class='bx bx-moon icon moon'></i>\r\n");
      out.write("                        <i class='bx bx-sun icon sun'></i>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <span class=\"mode-text text\">Nền tối</span>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"toggle-switch\">\r\n");
      out.write("                        <span class=\"switch\"></span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("    <section class=\"home\">\r\n");
      out.write("        <div class=\"text\">FASHION FOR YOU :v</div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"JS/script.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
