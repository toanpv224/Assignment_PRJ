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
        class="ts-categories-grid grid-masonry wow fadeInUp"
        data-wow-delay="0.8s"
        data-layoutmode="packery"
      >
        <div class="row no-margin">
          <div class="item-category col-sm-12 col-md-6 no-padding">
            <a href="/collections/tat-ca-san-pham" class="absolute-link"></a>
            <figure>
              <img
                class="lazysize"
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
                    class="lazysize"
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
                    class="lazysize"
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
                    class="lazysize"
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
                    class="lazysize"
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
        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1038149669"
              class="product-inner"
              data-publish-date=""
            >
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
                      <i class="line quickview"></i>
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
                        title="Tùy chọn"
                        href="/products/ao-thun-degrey-nhieu-trang-atdn-trang"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
                <span class="product-label sale"> <span>Sale</span> </span>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/ao-thun-degrey-nhieu-trang-atdn-trang"
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
                  href="/products/ao-thun-degrey-nhieu-trang-atdn-trang"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1038149666"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a
                    href="/products/ao-thun-degrey-nhieu-den-atdn-den"
                    title=""
                  >
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1520_9592160f651943fa966a6a442666bf41_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1520_9592160f651943fa966a6a442666bf41_grande.jpg"
                      />
                      <img
                        class="img-loop lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Thun Degrey Nhiễu Đen - ATDN Đen "
                        data-srcset="//product.hstatic.net/1000281824/product/1520_9592160f651943fa966a6a442666bf41_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/1520_9592160f651943fa966a6a442666bf41_grande.jpg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1521_27223eb271cc45699fbb8ecc1027b14d_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1521_27223eb271cc45699fbb8ecc1027b14d_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Thun Degrey Nhiễu Đen - ATDN Đen "
                        data-srcset="//product.hstatic.net/1000281824/product/1521_27223eb271cc45699fbb8ecc1027b14d_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/1521_27223eb271cc45699fbb8ecc1027b14d_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="ao-thun-degrey-nhieu-den-atdn-den"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1038149666"
                      enctype="multipart/form-data"
                    >
                      <a
                        class="btn-select-option product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Tùy chọn"
                        href="/products/ao-thun-degrey-nhieu-den-atdn-den"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
                <span class="product-label sale"> <span>Sale</span> </span>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/ao-thun-degrey-nhieu-den-atdn-den"
                    title="Áo Thun Degrey Nhiễu Đen - ATDN Đen"
                    >Áo Thun Degrey Nhiễu Đen - ATDN Đen</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout">
                    <span>250,000₫</span> <del class="sale-price">320,000₫</del>
                  </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/ao-thun-degrey-nhieu-den-atdn-den"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1038140385"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a href="/products/ao-somi-degrey-x-mende" title="">
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360419436_84a8b1359756ecd4bae0aa71fb3c7cfe_3a700c59ba6d4e958590b407600310e9_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360419436_84a8b1359756ecd4bae0aa71fb3c7cfe_3a700c59ba6d4e958590b407600310e9_grande.jpg"
                      />
                      <img
                        class="img-loop lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Sơmi Degrey x Mende "
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360419436_84a8b1359756ecd4bae0aa71fb3c7cfe_3a700c59ba6d4e958590b407600310e9_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/z3213360419436_84a8b1359756ecd4bae0aa71fb3c7cfe_3a700c59ba6d4e958590b407600310e9_grande.jpg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360425006_8e740b16083f5e8c6b3f0dec5b33b5e8_b5a6b3ed4fec4b339f138b6633165522_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360425006_8e740b16083f5e8c6b3f0dec5b33b5e8_b5a6b3ed4fec4b339f138b6633165522_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Sơmi Degrey x Mende "
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360425006_8e740b16083f5e8c6b3f0dec5b33b5e8_b5a6b3ed4fec4b339f138b6633165522_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/z3213360425006_8e740b16083f5e8c6b3f0dec5b33b5e8_b5a6b3ed4fec4b339f138b6633165522_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="ao-somi-degrey-x-mende"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1038140385"
                      enctype="multipart/form-data"
                    >
                      <a
                        class="btn-select-option product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Tùy chọn"
                        href="/products/ao-somi-degrey-x-mende"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/ao-somi-degrey-x-mende"
                    title="Áo Sơmi Degrey x Mende"
                    >Áo Sơmi Degrey x Mende</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout"> <span>300,000₫</span> </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/ao-somi-degrey-x-mende"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1038140381"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a href="/products/ao-thun-degrey-x-mende" title="">
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360375857_2618690133a7e61a15d54868ec9fa802_564937a1939c42e49804ab2d16d15cb0_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360375857_2618690133a7e61a15d54868ec9fa802_564937a1939c42e49804ab2d16d15cb0_grande.jpg"
                      />
                      <img
                        class="img-loop lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Thun Degrey x Mende "
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360375857_2618690133a7e61a15d54868ec9fa802_564937a1939c42e49804ab2d16d15cb0_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/z3213360375857_2618690133a7e61a15d54868ec9fa802_564937a1939c42e49804ab2d16d15cb0_grande.jpg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360404602_f770233a74f61856afede96e32217ddc_71aa04d4009449188253f48a4ebc23ae_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360404602_f770233a74f61856afede96e32217ddc_71aa04d4009449188253f48a4ebc23ae_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Thun Degrey x Mende "
                        data-srcset="//product.hstatic.net/1000281824/product/z3213360404602_f770233a74f61856afede96e32217ddc_71aa04d4009449188253f48a4ebc23ae_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/z3213360404602_f770233a74f61856afede96e32217ddc_71aa04d4009449188253f48a4ebc23ae_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="ao-thun-degrey-x-mende"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1038140381"
                      enctype="multipart/form-data"
                    >
                      <a
                        class="btn-select-option product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Tùy chọn"
                        href="/products/ao-thun-degrey-x-mende"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/ao-thun-degrey-x-mende"
                    title="Áo Thun Degrey x Mende"
                    >Áo Thun Degrey x Mende</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout"> <span>300,000₫</span> </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/ao-thun-degrey-x-mende"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1038098711"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a
                    href="/products/balo-nap-degrey-ss2-xam-bnd-ss2-xam"
                    title=""
                  >
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1509_611e2b183be14996836040768f2acf02_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1509_611e2b183be14996836040768f2acf02_grande.jpg"
                      />
                      <img
                        class="img-loop lazyloaed"
                        height="300"
                        width="300"
                        alt=" Balo Nắp Degrey ss2 Xám - BND ss2 Xám "
                        data-srcset="//product.hstatic.net/1000281824/product/1509_611e2b183be14996836040768f2acf02_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/1509_611e2b183be14996836040768f2acf02_grande.jpg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1510_c0bde510fa01459297fa0ed79e28f7dd_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1510_c0bde510fa01459297fa0ed79e28f7dd_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazyloaed"
                        height="300"
                        width="300"
                        alt=" Balo Nắp Degrey ss2 Xám - BND ss2 Xám "
                        data-srcset="//product.hstatic.net/1000281824/product/1510_c0bde510fa01459297fa0ed79e28f7dd_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/1510_c0bde510fa01459297fa0ed79e28f7dd_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="balo-nap-degrey-ss2-xam-bnd-ss2-xam"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1038098711"
                      enctype="multipart/form-data"
                    >
                      <input type="hidden" name="id" value="1083400114" />
                      <a
                        class="btn-addToCart product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Thêm vào giỏ"
                        href="javascript:void(0)"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
                <span class="product-label sale"> <span>Sale</span> </span>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/balo-nap-degrey-ss2-xam-bnd-ss2-xam"
                    title="Balo Nắp Degrey ss2 Xám - BND ss2 Xám"
                    >Balo Nắp Degrey ss2 Xám - BND ss2 Xám</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout">
                    <span>390,000₫</span> <del class="sale-price">420,000₫</del>
                  </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/balo-nap-degrey-ss2-xam-bnd-ss2-xam"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1038098701"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a
                    href="/products/balo-nap-degrey-ss2-den-bnd-ss2-den"
                    title=""
                  >
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1515_236dd36c33a94a36ad17e5377fbff886_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1515_236dd36c33a94a36ad17e5377fbff886_grande.jpg"
                      />
                      <img
                        class="img-loop lazyloaed"
                        height="300"
                        width="300"
                        alt=" Balo Nắp Degrey ss2 Đen - BND ss2 Đen "
                        data-srcset="//product.hstatic.net/1000281824/product/1515_236dd36c33a94a36ad17e5377fbff886_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/1515_236dd36c33a94a36ad17e5377fbff886_grande.jpg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1516_4e6460e27f2e42cbae2019e7d98d78af_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/1516_4e6460e27f2e42cbae2019e7d98d78af_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazyloaed"
                        height="300"
                        width="300"
                        alt=" Balo Nắp Degrey ss2 Đen - BND ss2 Đen "
                        data-srcset="//product.hstatic.net/1000281824/product/1516_4e6460e27f2e42cbae2019e7d98d78af_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/1516_4e6460e27f2e42cbae2019e7d98d78af_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="balo-nap-degrey-ss2-den-bnd-ss2-den"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1038098701"
                      enctype="multipart/form-data"
                    >
                      <input type="hidden" name="id" value="1083400095" />
                      <a
                        class="btn-addToCart product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Thêm vào giỏ"
                        href="javascript:void(0)"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
                <span class="product-label sale"> <span>Sale</span> </span>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/balo-nap-degrey-ss2-den-bnd-ss2-den"
                    title="Balo Nắp Degrey ss2 Đen - BND ss2 Đen"
                    >Balo Nắp Degrey ss2 Đen - BND ss2 Đen</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout">
                    <span>390,000₫</span> <del class="sale-price">420,000₫</del>
                  </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/balo-nap-degrey-ss2-den-bnd-ss2-den"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1037964519"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a
                    href="/products/ao-so-mi-gan-degrey-nau-dat-asmg-nau-dat"
                    title=""
                  >
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/574_3eb58b2082d64856a58f815453fed256_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/574_3eb58b2082d64856a58f815453fed256_grande.jpg"
                      />
                      <img
                        class="img-loop lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Sơ Mi Gân Degrey Nâu Đất - ASMG Nâu Đất "
                        data-srcset="//product.hstatic.net/1000281824/product/574_3eb58b2082d64856a58f815453fed256_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/574_3eb58b2082d64856a58f815453fed256_grande.jpg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/575_da2f5bcc30574989b7628eb94f061047_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/575_da2f5bcc30574989b7628eb94f061047_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Sơ Mi Gân Degrey Nâu Đất - ASMG Nâu Đất "
                        data-srcset="//product.hstatic.net/1000281824/product/575_da2f5bcc30574989b7628eb94f061047_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/575_da2f5bcc30574989b7628eb94f061047_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="ao-so-mi-gan-degrey-nau-dat-asmg-nau-dat"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1037964519"
                      enctype="multipart/form-data"
                    >
                      <a
                        class="btn-select-option product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Tùy chọn"
                        href="/products/ao-so-mi-gan-degrey-nau-dat-asmg-nau-dat"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/ao-so-mi-gan-degrey-nau-dat-asmg-nau-dat"
                    title="Áo Sơ Mi Gân Degrey Nâu Đất - ASMG Nâu Đất"
                    >Áo Sơ Mi Gân Degrey Nâu Đất - ASMG Nâu Đất</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout"> <span>380,000₫</span> </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/ao-so-mi-gan-degrey-nau-dat-asmg-nau-dat"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1037964516"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a href="/products/ao-so-mi-gan-degrey-kem-asmg-kem" title="">
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/576_accb96b92b4d49848637a7726d9b26c1_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/576_accb96b92b4d49848637a7726d9b26c1_grande.jpg"
                      />
                      <img
                        class="img-loop lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Sơ Mi Gân Degrey Kem - ASMG Kem "
                        data-srcset="//product.hstatic.net/1000281824/product/576_accb96b92b4d49848637a7726d9b26c1_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/576_accb96b92b4d49848637a7726d9b26c1_grande.jpg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/577__d22ac04821164e5798ba031c90ee8b63_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/577__d22ac04821164e5798ba031c90ee8b63_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazyloaed"
                        height="300"
                        width="300"
                        alt=" Áo Sơ Mi Gân Degrey Kem - ASMG Kem "
                        data-srcset="//product.hstatic.net/1000281824/product/577__d22ac04821164e5798ba031c90ee8b63_grande.jpg"
                        src="//product.hstatic.net/1000281824/product/577__d22ac04821164e5798ba031c90ee8b63_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="ao-so-mi-gan-degrey-kem-asmg-kem"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1037964516"
                      enctype="multipart/form-data"
                    >
                      <a
                        class="btn-select-option product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Tùy chọn"
                        href="/products/ao-so-mi-gan-degrey-kem-asmg-kem"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/ao-so-mi-gan-degrey-kem-asmg-kem"
                    title="Áo Sơ Mi Gân Degrey Kem - ASMG Kem"
                    >Áo Sơ Mi Gân Degrey Kem - ASMG Kem</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout"> <span>380,000₫</span> </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/ao-so-mi-gan-degrey-kem-asmg-kem"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1037964512"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a href="/products/ao-so-mi-gan-degrey-den-asmg-den" title="">
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/578_c04c5d7d0ce94afb9e3646e5a39c8c5e_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/578_c04c5d7d0ce94afb9e3646e5a39c8c5e_grande.jpg"
                      />
                      <img
                        class="img-loop lazy"
                        height="300"
                        width="300"
                        alt=" Áo Sơ Mi Gân Degrey Đen - ASMG Đen "
                        data-srcset="//product.hstatic.net/1000281824/product/578_c04c5d7d0ce94afb9e3646e5a39c8c5e_grande.jpg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/579_e9b4ec6c6e7c4c039b765ea0afaf47e2_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/579_e9b4ec6c6e7c4c039b765ea0afaf47e2_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazy"
                        height="300"
                        width="300"
                        alt=" Áo Sơ Mi Gân Degrey Đen - ASMG Đen "
                        data-srcset="//product.hstatic.net/1000281824/product/579_e9b4ec6c6e7c4c039b765ea0afaf47e2_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="ao-so-mi-gan-degrey-den-asmg-den"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1037964512"
                      enctype="multipart/form-data"
                    >
                      <a
                        class="btn-select-option product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Tùy chọn"
                        href="/products/ao-so-mi-gan-degrey-den-asmg-den"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/ao-so-mi-gan-degrey-den-asmg-den"
                    title="Áo Sơ Mi Gân Degrey Đen - ASMG Đen"
                    >Áo Sơ Mi Gân Degrey Đen - ASMG Đen</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout"> <span>380,000₫</span> </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/ao-so-mi-gan-degrey-den-asmg-den"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1037926797"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a href="/products/ao-xoai-yangho-axyh" title="">
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/600_19d98a89c2f04fd4872208e3725dd86e_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/600_19d98a89c2f04fd4872208e3725dd86e_grande.jpg"
                      />
                      <img
                        class="img-loop lazy"
                        height="300"
                        width="300"
                        alt=" Áo Xoài YangHo - AXYH "
                        data-srcset="//product.hstatic.net/1000281824/product/600_19d98a89c2f04fd4872208e3725dd86e_grande.jpg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/601_0e1f75e3b6c54348a662cf5a307ce5fe_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/601_0e1f75e3b6c54348a662cf5a307ce5fe_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazy"
                        height="300"
                        width="300"
                        alt=" Áo Xoài YangHo - AXYH "
                        data-srcset="//product.hstatic.net/1000281824/product/601_0e1f75e3b6c54348a662cf5a307ce5fe_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="ao-xoai-yangho-axyh"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1037926797"
                      enctype="multipart/form-data"
                    >
                      <a
                        class="btn-select-option product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Tùy chọn"
                        href="/products/ao-xoai-yangho-axyh"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
                <span class="product-label sale"> <span>Sale</span> </span>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/ao-xoai-yangho-axyh"
                    title="Áo Xoài YangHo - AXYH"
                    >Áo Xoài YangHo - AXYH</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout">
                    <span>250,000₫</span> <del class="sale-price">320,000₫</del>
                  </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/ao-xoai-yangho-axyh"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1037463503"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a href="/products/varsity-basic-degrey-vbd" title="">
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/488618e7-cb66-42ea-a718-1399b967c8b1_11427256a1b14260822e58d9e60b55c3_large.jpeg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/488618e7-cb66-42ea-a718-1399b967c8b1_11427256a1b14260822e58d9e60b55c3_grande.jpeg"
                      />
                      <img
                        class="img-loop lazy"
                        height="300"
                        width="300"
                        alt=" Varsity Basic Degrey - VBD "
                        data-srcset="//product.hstatic.net/1000281824/product/488618e7-cb66-42ea-a718-1399b967c8b1_11427256a1b14260822e58d9e60b55c3_grande.jpeg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/441_4d4694de23f84bef838bd82f49e8c1ae_large.jpg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/441_4d4694de23f84bef838bd82f49e8c1ae_grande.jpg"
                      />
                      <img
                        class="img-loop img-hover lazy"
                        height="300"
                        width="300"
                        alt=" Varsity Basic Degrey - VBD "
                        data-srcset="//product.hstatic.net/1000281824/product/441_4d4694de23f84bef838bd82f49e8c1ae_grande.jpg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="varsity-basic-degrey-vbd"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1037463503"
                      enctype="multipart/form-data"
                    >
                      <a
                        class="btn-select-option product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Tùy chọn"
                        href="/products/varsity-basic-degrey-vbd"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/varsity-basic-degrey-vbd"
                    title="Varsity Basic Degrey - VBD"
                    >Varsity Basic Degrey - VBD</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout"> <span>450,000₫</span> </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/varsity-basic-degrey-vbd"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 product">
          <div
            class="product product-grid product-item clearfix single-product sss"
          >
            <div
              data-id="product-1037835438"
              class="product-inner"
              data-publish-date=""
            >
              <div class="product-media">
                <div class="product-img product-thumbnail img-full">
                  <a href="/products/varsity-basic-degrey-kem-vbd-kem" title="">
                    <picture class="loop-one-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/3cd651a3-bf5c-40b2-adb1-63e4c568c8ed_1d381602e2e4477d91bf6b26d165d4c6_large.jpeg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/3cd651a3-bf5c-40b2-adb1-63e4c568c8ed_1d381602e2e4477d91bf6b26d165d4c6_grande.jpeg"
                      />
                      <img
                        class="img-loop lazy"
                        height="300"
                        width="300"
                        alt=" Varsity Basic Degrey Kem - VBD Kem "
                        data-srcset="//product.hstatic.net/1000281824/product/3cd651a3-bf5c-40b2-adb1-63e4c568c8ed_1d381602e2e4477d91bf6b26d165d4c6_grande.jpeg"
                      />
                    </picture>

                    <picture class="loop-two-img">
                      <source
                        media="(max-width: 767px)"
                        data-srcset="//product.hstatic.net/1000281824/product/b73c17f9-eaee-4acd-822a-a17093712cc5_c3edf68359dc4b93bc01bff4a6c5b475_large.jpeg"
                      />
                      <source
                        media="(min-width: 768px)"
                        data-srcset="//product.hstatic.net/1000281824/product/b73c17f9-eaee-4acd-822a-a17093712cc5_c3edf68359dc4b93bc01bff4a6c5b475_grande.jpeg"
                      />
                      <img
                        class="img-loop img-hover lazy"
                        height="300"
                        width="300"
                        alt=" Varsity Basic Degrey Kem - VBD Kem "
                        data-srcset="//product.hstatic.net/1000281824/product/b73c17f9-eaee-4acd-822a-a17093712cc5_c3edf68359dc4b93bc01bff4a6c5b475_grande.jpeg"
                      />
                    </picture>
                  </a>
                </div>
                <div class="product-hover">
                  <div class="product-actions">
                    <a
                      href="javascript:void(0)"
                      data-id="varsity-basic-degrey-kem-vbd-kem"
                      class="awe-button product-quick-view btn-quickview"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Xem nhanh"
                    >
                      <i class="line quickview"></i>
                    </a>
                    <form
                      action="/cart/add"
                      method="post"
                      class="variants AddToCartForm-1037835438"
                      enctype="multipart/form-data"
                    >
                      <a
                        class="btn-select-option product-add-cart"
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Tùy chọn"
                        href="/products/varsity-basic-degrey-kem-vbd-kem"
                        ><i class="line addcart"></i
                      ></a>
                    </form>
                  </div>
                </div>
              </div>

              <div class="product-body text-center">
                <h2 class="product-name">
                  <a
                    href="/products/varsity-basic-degrey-kem-vbd-kem"
                    title="Varsity Basic Degrey Kem - VBD Kem"
                    >Varsity Basic Degrey Kem - VBD Kem</a
                  >
                </h2>
                <div class="product-price">
                  <span class="amout"> <span>450,000₫</span> </span>
                </div>
                <a
                  class="ts-viewdetail hidden"
                  href="/products/varsity-basic-degrey-kem-vbd-kem"
                  ><span class="icon icon-arrows-slim-right"></span
                ></a>
              </div>
            </div>
            <div class="product__tag"></div>
          </div>
        </div>
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
