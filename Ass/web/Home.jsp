
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
            <section class="home-bg">
                <img src="PNG/bg.jpg" />
            </section>

        <jsp:include page="List_sp.jsp"></jsp:include>

        <h1 style="margin-top: 20px;background:floralwhite;padding: auto ;text-align: center; color: red;">Sản phẩm hot</h1>

            <section class="home-sptt">

                <div class="swiper mySwiper container">
                    <div class="swiper-wrapper content">
                    <c:forEach items="${requestScope.listP}" var="o">
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="${o.image}" alt="">
                                </div>

                                <div class="name-profession">
                                    <span class="name">${o.name}</span>
                                    <span class="profession">${o.title}</span>
                                </div>

                                <div class="button">
                                    <button class="aboutMe"><a href="detail?pid=${o.id}">${o.price}₫</a></button>
                                    <button class="hireMe"><a href="#" onclick="myFunction(${o.id})">Add to Cart <i class='bx bx-cart-alt'></i></a></button>
                                </div>
                            </div>
                        </div></c:forEach>

                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </section>

        <h1 style="margin-top: 20px;background:floralwhite;padding: auto ;text-align: center; color: #222;">Sản phẩm nổi bật</h1>
            <section class="home-sp">
                <div class="row">
                <c:forEach items="${requestScope.listP}" var="o">

                    <div class="col-md-4 product">
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <a href="detail?pid=${o.id}"><img src="${o.image}" alt="" /></a>
                                </div>

                                <div class="name-pro">
                                    <span class="name">${o.name}</span>
                                    <span class="pro-title">${o.title}</span>
                                </div>

                                <div class="button">
                                    <button class="aboutMe"><a href="detail?pid=${o.id}">${o.price}₫</a>
                                    </button>
                                    <button class="hireMe">
                                        <a href="#" onclick="myFunction(${o.id})">Add to Cart <i class='bx bx-cart-alt'></i></a>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                </c:forEach>

            </div>
        </section>
        <section class="home-sp">
            <div class="page-trang">
                <a href="home?page=${1}">First</a>
                <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                    <a class="page-num" href="home?page=${i}">${i}</a>
                </c:forEach>
                <a href="home?page=${requestScope.num}">Last</a>
            </div>
        </section>

        <jsp:include page="Footer.jsp"></jsp:include>


        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <!-- Initialize Swiper -->
        <script>
                                            var swiper = new Swiper(".mySwiper", {
                                                slidesPerView: 4,
                                                spaceBetween: 30,
                                                slidesPerGroup: 4,
                                                loop: true,
                                                loopFillGroupWithBlank: true,
                                                pagination: {
                                                    el: ".swiper-pagination",
                                                    clickable: true,
                                                },
                                                navigation: {
                                                    nextEl: ".swiper-button-next",
                                                    prevEl: ".swiper-button-prev",
                                                },
                                            });
        </script>
        <script>
            function myFunction(id) {
                let text = "Đã thêm sản phẩm vào giỏ hàng　(○｀ 3′○)\nKiểm tra giỏ hàng OK or Cancel.";
                if (confirm(text) === true) {
                    window.location.href = 'cart?id=' + id + '&&index=Cart';
                } else {
                    window.location.href = 'cart?id=' + id + '&&index=home';
                }
            }
            function searchByName(param) {
                var txtSearch = param.value;
                $.ajax({
                    url: "SearchByAjax",
                    type: "get", //send it through get method
                    data: {
                        txt: txtSearch
                    },
                    success: function (data) {
                        var row = document.getElementById("content");
                        row.innerHTML = data;
                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
        </script>
        <script src="JS/script.js"></script>
    </body>
</html>


