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
        <nav>
            <div class="nav-bar">
                <i class="bx bx-menu sidebarOpen"></i>

                <span class="logo navLogo"><a href="#">TakeYourLove</a></span>

                <div class="menu">
                    <div class="logo-toggle">
                        <span class="logo"><a href="#">TakeYourLove</a></span>
                        <i class="bx bx-x siderbarClose"></i>
                    </div>

                    <ul class="nav-links">
                        <li><a href="#">Trang chủ</a></li>
                        <li>
                            <a href="#"
                               >Sản phẩm<i class="bx bxs-chevron-down arrow sp-arrow"></i
                                ></a>
                            <ul class="sp-sub-menu sub-menu">
                                <li><a href="#">Quần</a></li>
                                <li><a href="#">Áo</a></li>
                                <li><a href="#">Giày dép</a></li>
                                <li><a href="#">Phụ kiện</a></li>
                                <li>
                                    <a href="#"
                                       >Xem thêm<i
                                            class="bx bxs-chevron-right arrow more-arrow"
                                            ></i
                                        ></a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Hệ thống cửa hàng</a></li>
                        <li><a href="#">Sự kiện</a></li>
                        <li><a href="#">Giới thiệu</a></li>
                    </ul>
                </div>

                <div class="darkLight-searchBox">
                    <div class="dark-light">
                        <i class="bx bx-moon moon"></i>
                        <i class="bx bx-sun sun"></i>
                    </div>

                    <div class="searchBox">
                        <div class="searchToggle">
                            <i class="bx bx-x cancel"></i>
                            <i class="bx bx-search search"></i>
                        </div>

                        <div class="search-field">
                            <input type="text" placeholder="Tìm  kiếm..." />
                            <i class="bx bx-search"></i>
                        </div>
                    </div>
                    <button onclick="togglePopup()" class="first-button">
                        Đăng nhập
                    </button>
                    <div class="popup" id="popup-1">
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup()">×</div>

                            <h1>Đăng nhập</h1>
                            <div class="input-field">
                                <input name="username" placeholder="Email" class="validate" />
                            </div>
                            <div class="input-field">
                                <input
                                    name="password"
                                    placeholder="Password"
                                    class="validate"
                                    />
                            </div>
                            <div class="input-field">
                                <input
                                    name="remember"
                                    value="1"
                                    type="checkbox"
                                    class="form-check-input"
                                    id="exampleCheck1"
                                    />
                                <label class="form-check-label" for="exampleCheck1"
                                       >Remember me</label
                                >
                            </div>

                            <button class="second-button">Đăng nhập</button>
                            <p>Bạn chưa có tài khoản? <a href="#">Đăng kí</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <section class="home-bg">
            <img src="PNG/bg.jpg" />
        </section>

        <section class="home-sp">
            <div
                class="ts-categories-grid "
                >
                <div class="row no-margin">
                    <div class="item-category col-sm-12 col-md-6 no-padding">
                        <a href="/collections/tat-ca-san-pham" class="absolute-link"></a>
                        <figure>
                            <img
                                height="374"
                                width="374"
                                data-src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_1.jpg?v=516"
                                alt=""
                                src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_1.jpg?v=516"
                                />
                        </figure>
                        <div class="category-info">
                            <h4>
                                <a href="/collections/tat-ca-san-pham">TẤT CẢ SẢN PHẨM</a>
                            </h4>
                            <p>nhấp cái thấy hết</p>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 no-padding">
                        <div class="row no-margin">
                            <div class="item-category grid col-sm-6 no-padding">
                                <a href="/collections/jacket" class="absolute-link"></a>
                                <figure>
                                    <img

                                        height="374"
                                        width="374"
                                        data-src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_2.jpg?v=516"
                                        alt=""
                                        src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_2.jpg?v=516"
                                        />
                                </figure>
                                <div class="category-info">
                                    <h4><a href="/collections/jacket">Áo Khoác</a></h4>
                                    <p>Đẹp không hồi kết</p>
                                </div>
                            </div>

                            <div class="item-category grid col-sm-6 no-padding">
                                <a href="/collections/phu-kien" class="absolute-link"></a>
                                <figure>
                                    <img
                                        height="374"
                                        width="374"
                                        data-src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_3.jpg?v=516"
                                        alt=""
                                        src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_3.jpg?v=516"
                                        />
                                </figure>
                                <div class="category-info">
                                    <h4><a href="/collections/phu-kien">Phụ kiện</a></h4>
                                    <p>Đồ linh tinh rẻ thúi</p>
                                </div>
                            </div>

                            <div class="item-category grid col-sm-6 no-padding">
                                <a href="/collections/tee" class="absolute-link"></a>
                                <figure>
                                    <img
                                        height="374"
                                        width="374"
                                        data-src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_4.jpg?v=516"
                                        alt=""
                                        src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_4.jpg?v=516"
                                        />
                                </figure>
                                <div class="category-info">
                                    <h4><a href="/collections/tee">Áo Thun</a></h4>
                                    <p>Áo đẹp sấm sét</p>
                                </div>
                            </div>

                            <div class="item-category grid col-sm-6 no-padding">
                                <a href="/collections/quan" class="absolute-link"></a>
                                <figure>
                                    <img
                                        height="374"
                                        width="374"
                                        data-src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_5.jpg?v=516"
                                        alt=""
                                        src="//theme.hstatic.net/1000281824/1000704890/14/h2_cate_5.jpg?v=516"
                                        />
                                </figure>
                                <div class="category-info">
                                    <h4><a href="/collections/quan">Quần</a></h4>
                                    <p>Quần xinh huỷ diệt</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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

        <section class="session-footer">
            <div class="modal-footer">
                <p>
                    <br />Email : Toanpv224@gmail.com <br />
                    Address: Xã Đức Giang, huyện Hoài Đức, HN
                </p>
                <h5>&copy; Copyright 2022. Tyl.com</h5>
            </div>
        </section>

        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

        <script src="JS/script.js"></script>
    </body>
</html>


