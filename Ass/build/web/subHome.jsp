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
                <c:forEach items="${requestScope.listCP}" var="o">

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
                                    <button class="aboutMe"><a href="detail?pid=${o.id}">${o.price}???</a>
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
        <c:if test="${requestScope.tag != null}">
        <section class="home-sp">
            <div class="page-trang">
                <a href="category?page=${1}&&cid=${requestScope.tag}">First</a>
                <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                    <a class="page-num" href="category?page=${i}&&cid=${requestScope.tag}">${i}</a>
                </c:forEach>
                <a href="category?page=${requestScope.num}&&cid=${requestScope.tag}">Last</a>
            </div>
        </section>
        </c:if>
        <c:if test="${requestScope.tag == null}">
        <section class="home-sp">
            <div class="page-trang">
                <a href="search?page=${1}&&txt=${requestScope.tags}">First</a>
                <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                    <a class="page-num" href="search?page=${i}&&txt=${requestScope.tags}">${i}</a>
                </c:forEach>
                <a href="search?page=${requestScope.num}&&txt=${requestScope.tags}">Last</a>
            </div>
        </section>
        </c:if>
        <jsp:include page="Footer.jsp"></jsp:include>


        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script>
            function myFunction(id) {
                let text = "???? th??m s???n ph???m v??o gi??? h??ng???(?????? 3??????)\nKi???m tra gi??? h??ng OK or Cancel.";
                if (confirm(text) === true) {
                    window.location.href = 'cart?id=' + id + '&&index=cart';
                }else{
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
