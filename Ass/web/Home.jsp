<%@page import="Model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- ===== Link Swiper's CSS ===== -->
        <link
            rel="stylesheet"
            href="https://unpkg.com/swiper/swiper-bundle.min.css"
            />

        <!-- ===== Fontawesome CDN Link ===== -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
            />

        <!-- ===== CSS ===== -->
        <link rel="stylesheet" href="CSS/style.css" />

        <link rel="stylesheet" href="CSS/boot.css" />

        <link rel="stylesheet" href="CSS/test.css" />

        <!-- ===== Boxicons CSS ===== -->
        <link
            href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
            rel="stylesheet"
            />

        <title>TYL Clothing</title>
    </head>
    <body>

        <jsp:include page="Menu.jsp"></jsp:include>

        <jsp:include page="List_sp.jsp"></jsp:include>


            <section class="home-sp">
                <div class="row">
                <c:forEach begin="1" end="12">

                    <div class="col-md-3 col-sm-6 col-xs-12 product">
                        <div
                            class="product product-grid clearfix single-product"
                            >
                            <div data-id="product-1038149669">
                                <div class="product-media">
                                    <div class="product-img product-thumbnail img-full">
                                        <a
                                            href="/products/ao-thun-degrey-nhieu-trang-atdn-trang"
                                            title=""
                                            >
                                            <picture class="loop-one-img">
                                                <source
                                                    media="(max-width: 767px)"
                                                    data-srcset="//product.hstatic.net/1000281824/product/1525_e62ba458922847ce98f35002ac682dce_large.jpg"
                                                    />
                                                <source
                                                    media="(min-width: 768px)"
                                                    data-srcset="//product.hstatic.net/1000281824/product/1525_e62ba458922847ce98f35002ac682dce_grande.jpg"
                                                    />
                                                <img
                                                    class="img-loop lazyloaed"
                                                    height="300"
                                                    width="300"
                                                    alt=" Áo Thun Degrey Nhiễu Trắng - ATDN Trắng "
                                                    data-srcset="//product.hstatic.net/1000281824/product/1525_e62ba458922847ce98f35002ac682dce_grande.jpg"
                                                    src="//product.hstatic.net/1000281824/product/1525_e62ba458922847ce98f35002ac682dce_grande.jpg"
                                                    />
                                            </picture>

                                            <picture class="loop-two-img">
                                                <source
                                                    media="(max-width: 767px)"
                                                    data-srcset="//product.hstatic.net/1000281824/product/1526_bcea15cadb424469b6a2c01eecbf07a0_large.jpg"
                                                    />
                                                <source
                                                    media="(min-width: 768px)"
                                                    data-srcset="//product.hstatic.net/1000281824/product/1526_bcea15cadb424469b6a2c01eecbf07a0_grande.jpg"
                                                    />
                                                <img
                                                    class="img-loop img-hover lazyloaed"
                                                    height="300"
                                                    width="300"
                                                    alt=" Áo Thun Degrey Nhiễu Trắng - ATDN Trắng "
                                                    data-srcset="//product.hstatic.net/1000281824/product/1526_bcea15cadb424469b6a2c01eecbf07a0_grande.jpg"
                                                    src="//product.hstatic.net/1000281824/product/1526_bcea15cadb424469b6a2c01eecbf07a0_grande.jpg"
                                                    />
                                            </picture>
                                        </a>
                                    </div>

                                    <div class="product-hover">
                                        <div class="product-actions">
                                            <a
                                                href="javascript:void(0)"
                                                data-id="ao-thun-degrey-nhieu-trang-atdn-trang"
                                                class="awe-button product-quick-view btn-quickview"
                                                data-toggle="tooltip"
                                                data-placement="left"
                                                title="Xem nhanh"
                                                >
                                                <i class='bx bxs-detail quickview' ></i>Xem
                                            </a>
                                            <form
                                                action="/cart/add"
                                                method="post"
                                                class="variants AddToCartForm-1038149669"
                                                enctype="multipart/form-data"
                                                >
                                                <a
                                                    class="btn-select-option product-add-cart"
                                                    data-toggle="tooltip"
                                                    data-placement="left"
                                                    title="Thêm vào giỏ hàng"
                                                    href="#####################################################################################"
                                                    ><i class="bx bxs-cart-add addcart"></i>Thêm
                                                </a>
                                            </form>
                                        </div>
                                    </div>

                                </div>

                                <div class="product-body text-center">
                                    <h2 class="product-name">
                                        <a
                                            href="#####################################################################################"
                                            title="Áo Thun Degrey Nhiễu Trắng - ATDN Trắng"
                                            >Áo Thun Degrey Nhiễu Trắng - ATDN Trắng</a
                                        >
                                    </h2>
                                    <div class="product-price">
                                        <span class="amout">
                                            <span>250,000₫</span> <del class="sale-price">320,000₫</del>
                                        </span>
                                    </div>
                                    <a
                                        class="ts-viewdetail hidden"
                                        href="#####################################################################################"
                                        ><span class="icon icon-arrows-slim-right"></span
                                        ></a>
                                </div>
                            </div>
                            <div class="product__tag"></div>
                        </div>
                    </div>

                </c:forEach>

                </div>
            </section>

        <jsp:include page="Footer.jsp"></jsp:include>


        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

        <script src="JS/script.js"></script>
    </body>
</html>


