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

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_end_begin;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_end_begin.release();
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
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\" />\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- ===== Link Swiper's CSS ===== -->\r\n");
      out.write("        <link\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            href=\"https://unpkg.com/swiper/swiper-bundle.min.css\"\r\n");
      out.write("            />\r\n");
      out.write("\r\n");
      out.write("        <!-- ===== Fontawesome CDN Link ===== -->\r\n");
      out.write("        <link\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\"\r\n");
      out.write("            />\r\n");
      out.write("\r\n");
      out.write("        <!-- ===== CSS ===== -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/style.css\" />\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/boot.css\" />\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/test.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- ===== Boxicons CSS ===== -->\r\n");
      out.write("        <link\r\n");
      out.write("            href=\"https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css\"\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            />\r\n");
      out.write("\r\n");
      out.write("        <title>TYL Clothing</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Menu.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "List_sp.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <section class=\"home-sp\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </section>\r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Swiper JS -->\r\n");
      out.write("        <script src=\"https://unpkg.com/swiper/swiper-bundle.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"JS/script.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setBegin(1);
    _jspx_th_c_forEach_0.setEnd(12);
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\r\n");
          out.write("                    <div class=\"col-md-3 col-sm-6 col-xs-12 product\">\r\n");
          out.write("                        <div\r\n");
          out.write("                            class=\"product product-grid clearfix single-product\"\r\n");
          out.write("                            >\r\n");
          out.write("                            <div data-id=\"product-1038149669\">\r\n");
          out.write("                                <div class=\"product-media\">\r\n");
          out.write("                                    <div class=\"product-img product-thumbnail img-full\">\r\n");
          out.write("                                        <a\r\n");
          out.write("                                            href=\"/products/ao-thun-degrey-nhieu-trang-atdn-trang\"\r\n");
          out.write("                                            title=\"\"\r\n");
          out.write("                                            >\r\n");
          out.write("                                            <picture class=\"loop-one-img\">\r\n");
          out.write("                                                <source\r\n");
          out.write("                                                    media=\"(max-width: 767px)\"\r\n");
          out.write("                                                    data-srcset=\"//product.hstatic.net/1000281824/product/1525_e62ba458922847ce98f35002ac682dce_large.jpg\"\r\n");
          out.write("                                                    />\r\n");
          out.write("                                                <source\r\n");
          out.write("                                                    media=\"(min-width: 768px)\"\r\n");
          out.write("                                                    data-srcset=\"//product.hstatic.net/1000281824/product/1525_e62ba458922847ce98f35002ac682dce_grande.jpg\"\r\n");
          out.write("                                                    />\r\n");
          out.write("                                                <img\r\n");
          out.write("                                                    class=\"img-loop lazyloaed\"\r\n");
          out.write("                                                    height=\"300\"\r\n");
          out.write("                                                    width=\"300\"\r\n");
          out.write("                                                    alt=\" Áo Thun Degrey Nhiễu Trắng - ATDN Trắng \"\r\n");
          out.write("                                                    data-srcset=\"//product.hstatic.net/1000281824/product/1525_e62ba458922847ce98f35002ac682dce_grande.jpg\"\r\n");
          out.write("                                                    src=\"//product.hstatic.net/1000281824/product/1525_e62ba458922847ce98f35002ac682dce_grande.jpg\"\r\n");
          out.write("                                                    />\r\n");
          out.write("                                            </picture>\r\n");
          out.write("\r\n");
          out.write("                                            <picture class=\"loop-two-img\">\r\n");
          out.write("                                                <source\r\n");
          out.write("                                                    media=\"(max-width: 767px)\"\r\n");
          out.write("                                                    data-srcset=\"//product.hstatic.net/1000281824/product/1526_bcea15cadb424469b6a2c01eecbf07a0_large.jpg\"\r\n");
          out.write("                                                    />\r\n");
          out.write("                                                <source\r\n");
          out.write("                                                    media=\"(min-width: 768px)\"\r\n");
          out.write("                                                    data-srcset=\"//product.hstatic.net/1000281824/product/1526_bcea15cadb424469b6a2c01eecbf07a0_grande.jpg\"\r\n");
          out.write("                                                    />\r\n");
          out.write("                                                <img\r\n");
          out.write("                                                    class=\"img-loop img-hover lazyloaed\"\r\n");
          out.write("                                                    height=\"300\"\r\n");
          out.write("                                                    width=\"300\"\r\n");
          out.write("                                                    alt=\" Áo Thun Degrey Nhiễu Trắng - ATDN Trắng \"\r\n");
          out.write("                                                    data-srcset=\"//product.hstatic.net/1000281824/product/1526_bcea15cadb424469b6a2c01eecbf07a0_grande.jpg\"\r\n");
          out.write("                                                    src=\"//product.hstatic.net/1000281824/product/1526_bcea15cadb424469b6a2c01eecbf07a0_grande.jpg\"\r\n");
          out.write("                                                    />\r\n");
          out.write("                                            </picture>\r\n");
          out.write("                                        </a>\r\n");
          out.write("                                    </div>\r\n");
          out.write("\r\n");
          out.write("                                    <div class=\"product-hover\">\r\n");
          out.write("                                        <div class=\"product-actions\">\r\n");
          out.write("                                            <a\r\n");
          out.write("                                                href=\"javascript:void(0)\"\r\n");
          out.write("                                                data-id=\"ao-thun-degrey-nhieu-trang-atdn-trang\"\r\n");
          out.write("                                                class=\"awe-button product-quick-view btn-quickview\"\r\n");
          out.write("                                                data-toggle=\"tooltip\"\r\n");
          out.write("                                                data-placement=\"left\"\r\n");
          out.write("                                                title=\"Xem nhanh\"\r\n");
          out.write("                                                >\r\n");
          out.write("                                                <i class='bx bxs-detail quickview' ></i>Xem\r\n");
          out.write("                                            </a>\r\n");
          out.write("                                            <form\r\n");
          out.write("                                                action=\"/cart/add\"\r\n");
          out.write("                                                method=\"post\"\r\n");
          out.write("                                                class=\"variants AddToCartForm-1038149669\"\r\n");
          out.write("                                                enctype=\"multipart/form-data\"\r\n");
          out.write("                                                >\r\n");
          out.write("                                                <a\r\n");
          out.write("                                                    class=\"btn-select-option product-add-cart\"\r\n");
          out.write("                                                    data-toggle=\"tooltip\"\r\n");
          out.write("                                                    data-placement=\"left\"\r\n");
          out.write("                                                    title=\"Thêm vào giỏ hàng\"\r\n");
          out.write("                                                    href=\"#####################################################################################\"\r\n");
          out.write("                                                    ><i class=\"bx bxs-cart-add addcart\"></i>Thêm\r\n");
          out.write("                                                </a>\r\n");
          out.write("                                            </form>\r\n");
          out.write("                                        </div>\r\n");
          out.write("                                    </div>\r\n");
          out.write("\r\n");
          out.write("                                </div>\r\n");
          out.write("\r\n");
          out.write("                                <div class=\"product-body text-center\">\r\n");
          out.write("                                    <h2 class=\"product-name\">\r\n");
          out.write("                                        <a\r\n");
          out.write("                                            href=\"#####################################################################################\"\r\n");
          out.write("                                            title=\"Áo Thun Degrey Nhiễu Trắng - ATDN Trắng\"\r\n");
          out.write("                                            >Áo Thun Degrey Nhiễu Trắng - ATDN Trắng</a\r\n");
          out.write("                                        >\r\n");
          out.write("                                    </h2>\r\n");
          out.write("                                    <div class=\"product-price\">\r\n");
          out.write("                                        <span class=\"amout\">\r\n");
          out.write("                                            <span>250,000₫</span> <del class=\"sale-price\">320,000₫</del>\r\n");
          out.write("                                        </span>\r\n");
          out.write("                                    </div>\r\n");
          out.write("                                    <a\r\n");
          out.write("                                        class=\"ts-viewdetail hidden\"\r\n");
          out.write("                                        href=\"#####################################################################################\"\r\n");
          out.write("                                        ><span class=\"icon icon-arrows-slim-right\"></span\r\n");
          out.write("                                        ></a>\r\n");
          out.write("                                </div>\r\n");
          out.write("                            </div>\r\n");
          out.write("                            <div class=\"product__tag\"></div>\r\n");
          out.write("                        </div>\r\n");
          out.write("                    </div>\r\n");
          out.write("\r\n");
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
      _jspx_tagPool_c_forEach_end_begin.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
