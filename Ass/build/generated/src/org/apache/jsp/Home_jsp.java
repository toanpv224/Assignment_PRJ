package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.Product;
import java.util.ArrayList;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- ===== Link Swiper's CSS ===== -->\r\n");
      out.write("    <link\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("      href=\"https://unpkg.com/swiper/swiper-bundle.min.css\"\r\n");
      out.write("    />\r\n");
      out.write("\r\n");
      out.write("    <!-- ===== Fontawesome CDN Link ===== -->\r\n");
      out.write("    <link\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("      href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\"\r\n");
      out.write("    />\r\n");
      out.write("\r\n");
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
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">Sản phẩm<i class='bx bxs-chevron-down arrow sp-arrow'></i></a>\r\n");
      out.write("                        <ul class=\"sp-sub-menu sub-menu\">\r\n");
      out.write("                            <li><a href=\"#\">Quần</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Áo</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Giày dép</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Phụ kiện</a></li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"#\">Xem thêm<i class='bx bxs-chevron-right arrow more-arrow'></i></a>  \r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
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
      out.write("                <button onclick=\"togglePopup()\" class=\"first-button\">Đăng nhập</button>\r\n");
      out.write("                <div class=\"popup\" id=\"popup-1\">\r\n");
      out.write("                    <div class=\"content\">\r\n");
      out.write("                     <div class=\"close-btn\" onclick=\"togglePopup()\">\r\n");
      out.write("                      ×</div>\r\n");
      out.write("                      \r\n");
      out.write("                 <h1>Đăng nhập</h1> \r\n");
      out.write("                   <div class=\"input-field\"><input placeholder=\"Email\" class=\"validate\"></div>\r\n");
      out.write("                   <div class=\"input-field\"><input placeholder=\"Password\" class=\"validate\"></div>\r\n");
      out.write("                     <button class=\"second-button\">Đăng nhập</button>\r\n");
      out.write("                     <p>Bạn chưa có tài khoản? <a href=\"#\">Đăng kí</a></p>\r\n");
      out.write("                       \r\n");
      out.write("                      \r\n");
      out.write("                    </div>\r\n");
      out.write("                   </div>\r\n");
      out.write("                   \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <section class=\"home\">\r\n");
      out.write("        <img src=\"PNG/bg.jpg\">\r\n");
      out.write("    </section>\r\n");
      out.write("    <div class=\"text\">\r\n");
      out.write("        <p><h2>Test test test</h2>Sau bàn thắng của Bảo Toàn, trận đấu giằng co và vô cùng sôi nổi. U23 Thái Lan cố gắng dồn lên ép sân nhưng họ tỏ ra khá bế tắc trong việc tìm đường vào khung thành của U23 Việt Nam. Những \"chú voi chiến trẻ\" chỉ có thể gây sóng gió bằng các tình huống sút xa nhưng tất cả đều không vượt qua được đôi tay của \"người nhện\" Tuấn Hưng.\r\n");
      out.write("\r\n");
      out.write("            Ở chiều ngược lại, U23 Việt Nam tận dụng việc U23 Thái Lan dâng cao để tạo ra nhiều pha tấn công nguy hiểm. Tuy nhiên, ở những tình huống cuối cùng, các chân sút của U23 Việt Nam đều tận dụng không thành công. Càng về cuối, sự từng trải của U23 Việt Nam càng được thể hiện khi các học trò HLV Đinh Thế Nam chơi bình tĩnh và bản lĩnh. Trong khi đó, U23 Thái Lan tỏ ra nóng vội và thiếu bình tĩnh. \r\n");
      out.write("            \r\n");
      out.write("            Chung cuộc U23 Việt Nam đánh bại U23 Thái Lan 1-0 để đăng quang chức vô địch Giải U23 Đông Nam Á 2022.\r\n");
      out.write("        </p>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <section class=\"sp-section\"> \r\n");
      out.write("        <div class=\"swiper mySwiper container\">\r\n");
      out.write("            <div class=\"swiper-wrapper content\">\r\n");
      out.write("                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("               \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"swiper-button-next\"></div>\r\n");
      out.write("        <div class=\"swiper-button-prev\"></div>\r\n");
      out.write("        <div class=\"swiper-pagination\"></div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <!-- Swiper JS -->\r\n");
      out.write("    <script src=\"https://unpkg.com/swiper/swiper-bundle.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Initialize Swiper -->\r\n");
      out.write("    <script>\r\n");
      out.write("                       var swiper = new Swiper(\".mySwiper\", {\r\n");
      out.write("                           slidesPerView: 3,\r\n");
      out.write("                           spaceBetween: 30,\r\n");
      out.write("                           slidesPerGroup: 3,\r\n");
      out.write("                           loop: true,\r\n");
      out.write("                           loopFillGroupWithBlank: true,\r\n");
      out.write("                           pagination: {\r\n");
      out.write("                               el: \".swiper-pagination\",\r\n");
      out.write("                               clickable: true,\r\n");
      out.write("                           },\r\n");
      out.write("                           navigation: {\r\n");
      out.write("                               nextEl: \".swiper-button-next\",\r\n");
      out.write("                               prevEl: \".swiper-button-prev\",\r\n");
      out.write("                           },\r\n");
      out.write("                       });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"modal-footer\">\r\n");
      out.write("\r\n");
      out.write("        <p><br>Email : Toanpv224@gmail.com <br> Address: Xã Đức Giang, huyện Hoài Đức, HN</p>\r\n");
      out.write("        <h5>&copy; Copyright 2022. Tyl.com</h5>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.list}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("o");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                <div class=\"swiper-slide card\">\r\n");
          out.write("                    <div class=\"card-content\">\r\n");
          out.write("                        <div class=\"image\">\r\n");
          out.write("                            <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\"  />\r\n");
          out.write("                        </div>\r\n");
          out.write("\r\n");
          out.write("                        <div class=\"name-product\">\r\n");
          out.write("                            <span class=\"name\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\r\n");
          out.write("                            <span class=\"title\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\r\n");
          out.write("                        </div>\r\n");
          out.write("\r\n");
          out.write("                        <div class=\"button\">\r\n");
          out.write("                            <button class=\"aboutMe\">About Me</button>\r\n");
          out.write("                            <button class=\"add-cart\">\r\n");
          out.write("                                <a href=\"#\" >Thêm<i class='bx bx-cart-alt'></i></a>\r\n");
          out.write("                            </button>\r\n");
          out.write("                        </div>\r\n");
          out.write("                    </div>\r\n");
          out.write("                </div>\r\n");
          out.write("                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
