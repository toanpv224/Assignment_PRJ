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
      out.write("\r\n");
      out.write("    <!-- ===== CSS ===== -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"CSS/style.css\">\r\n");
      out.write("        \r\n");
      out.write("    <!-- ===== Boxicons CSS ===== -->\r\n");
      out.write("    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>\r\n");
      out.write("\r\n");
      out.write("    <title>Responsive Navigation Menu Bar</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <nav>\r\n");
      out.write("        <div class=\"nav-bar\">\r\n");
      out.write("            <i class='bx bx-menu sidebarOpen' ></i>\r\n");
      out.write("            \r\n");
      out.write("            <span class=\"logo navLogo\"><a href=\"#\">TakeYourLove</a></span>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"menu\">\r\n");
      out.write("                <div class=\"logo-toggle\">\r\n");
      out.write("                    <span class=\"logo\"><a href=\"#\">TakeYourLove</a></span>\r\n");
      out.write("                    <i class='bx bx-x siderbarClose'></i>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <ul class=\"nav-links\">\r\n");
      out.write("                    <li><a href=\"#\">Trang chủ</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Sản phẩm</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Hệ thống cửa hàng</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Sự kiện</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Giới thiệu</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"darkLight-searchBox\">\r\n");
      out.write("                <div class=\"dark-light\">\r\n");
      out.write("                    <i class='bx bx-moon moon'></i>\r\n");
      out.write("                    <i class='bx bx-sun sun'></i>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"searchBox\">\r\n");
      out.write("                   <div class=\"searchToggle\">\r\n");
      out.write("                    <i class='bx bx-x cancel'></i>\r\n");
      out.write("                    <i class='bx bx-search search'></i>\r\n");
      out.write("                   </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"search-field\">\r\n");
      out.write("                        <input type=\"text\" placeholder=\"Tìm  kiếm...\">\r\n");
      out.write("                        <i class='bx bx-search'></i>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <section class=\"home\"></section>\r\n");
      out.write("    <div class=\"text\">\r\n");
      out.write("        <p><h2>Sticky Navigation Bar</h2>Sau bàn thắng của Bảo Toàn, trận đấu giằng co và vô cùng sôi nổi. U23 Thái Lan cố gắng dồn lên ép sân nhưng họ tỏ ra khá bế tắc trong việc tìm đường vào khung thành của U23 Việt Nam. Những \"chú voi chiến trẻ\" chỉ có thể gây sóng gió bằng các tình huống sút xa nhưng tất cả đều không vượt qua được đôi tay của \"người nhện\" Tuấn Hưng.\r\n");
      out.write("\r\n");
      out.write("            Ở chiều ngược lại, U23 Việt Nam tận dụng việc U23 Thái Lan dâng cao để tạo ra nhiều pha tấn công nguy hiểm. Tuy nhiên, ở những tình huống cuối cùng, các chân sút của U23 Việt Nam đều tận dụng không thành công. Càng về cuối, sự từng trải của U23 Việt Nam càng được thể hiện khi các học trò HLV Đinh Thế Nam chơi bình tĩnh và bản lĩnh. Trong khi đó, U23 Thái Lan tỏ ra nóng vội và thiếu bình tĩnh. \r\n");
      out.write("            \r\n");
      out.write("            Chung cuộc U23 Việt Nam đánh bại U23 Thái Lan 1-0 để đăng quang chức vô địch Giải U23 Đông Nam Á 2022.\r\n");
      out.write("            \r\n");
      out.write("            Sau bàn thắng của Bảo Toàn, trận đấu giằng co và vô cùng sôi nổi. U23 Thái Lan cố gắng dồn lên ép sân nhưng họ tỏ ra khá bế tắc trong việc tìm đường vào khung thành của U23 Việt Nam. Những \"chú voi chiến trẻ\" chỉ có thể gây sóng gió bằng các tình huống sút xa nhưng tất cả đều không vượt qua được đôi tay của \"người nhện\" Tuấn Hưng.\r\n");
      out.write("\r\n");
      out.write("Ở chiều ngược lại, U23 Việt Nam tận dụng việc U23 Thái Lan dâng cao để tạo ra nhiều pha tấn công nguy hiểm. Tuy nhiên, ở những tình huống cuối cùng, các chân sút của U23 Việt Nam đều tận dụng không thành công. Càng về cuối, sự từng trải của U23 Việt Nam càng được thể hiện khi các học trò HLV Đinh Thế Nam chơi bình tĩnh và bản lĩnh. Trong khi đó, U23 Thái Lan tỏ ra nóng vội và thiếu bình tĩnh. \r\n");
      out.write("\r\n");
      out.write("Chung cuộc U23 Việt Nam đánh bại U23 Thái Lan 1-0 để đăng quang chức vô địch Giải U23 Đông Nam Á 2022.\r\n");
      out.write("        </p>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("    <script src=\"JS/script.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
