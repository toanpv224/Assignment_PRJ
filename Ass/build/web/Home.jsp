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


            <section class="home-sp">
                <div class="row">
                <c:forEach items="${sessionScope.listP}" var="o">

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
                                    <button class="aboutMe"><a href="detail?pid=${o.id}">${o.price}đ</a>
                                    </button>
                                    <button class="hireMe">
                                        <a href="#">Add to Cart <i class='bx bx-cart-alt'></i></a>
                                    </button>
                                </div>
                            </div>
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


