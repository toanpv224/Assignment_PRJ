
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TYL Clothing</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
        <!-- ===== Boxicons CSS ===== -->
        <link
            href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
            rel="stylesheet"
            />
    </head>

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <section class="home-bg">
                <img src="PNG/bg.jpg" />
            </section>
            <div class="shopping-cart">
                <div class="px-4 px-lg-0">

                    <div class="pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                    <!-- Shopping cart table -->
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="border-0 bg-lightt">
                                                        <div class="p-2 px-3 text-uppercase">S???n Ph???m</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-lightt">
                                                        <div class="py-2 text-uppercase">????n Gi??</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-lightt">
                                                        <div class="py-2 text-uppercase">S??? L?????ng</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-lightt">
                                                        <div class="py-2 text-uppercase">X??a</div>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${list}" var="o">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="detail?pid=${o.id}" class="text-dark d-inline-block">${o.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle"><strong>${o.price}???</strong></td>
                                                    <td class="align-middle">
                                                        <a href="sub?id=${o.id}"><button class="btnSub">-</button></a> 
                                                        <strong>${o.amount}</strong>
                                                        <a href="cart?id=${o.id}"><button class="btnAdd">+</button></a>
                                                    </td>
                                                    <td class="align-middle"><a href="remove?id=${o.id}" class="text-dark">
                                                            <button type="button" class="btn btn-danger">Delete</button>
                                                        </a>
                                                    </td>
                                                </tr> 
                                            </c:forEach>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                                <section class="home-sp">
                                    <div class="page-trang table">
                                        <a href="showcart?page=${1}">First</a>
                                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                                            <a class="page-num" href="showcart?page=${i}">${i}</a>
                                        </c:forEach>
                                        <a href="showcart?page=${requestScope.num}">Last</a>
                                    </div>
                                </section>
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                            <div class="col-lg-3"></div>
                            <div class="col-lg-6">
                                <div class="bg-lightt rounded-pill px-4 py-3 text-uppercase font-weight-bold">Th??nh ti???n</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">T???ng ti???n h??ng</strong><strong>${total} ???</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Ph?? v???n chuy???n</strong><strong>Free ship</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>${vat} ???</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">T???ng thanh to??n</strong>
                                            <h5 class="font-weight-bold">${sum} ???</h5>
                                        </li>
                                    </ul><a href="#" onclick="myFunction()" class="btn btn-dark rounded-pill py-2 btn-block">Mua h??ng</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <script>
            function myFunction() {
                let text = "X??c nh???n ?????t h??ng!\nX??c nh???n OK \nho???c H???y.";
                if (confirm(text) === true) {
                    window.location.href = 'order';
                }
            }
        </script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

        <script src="JS/script.js"></script>
    </body>

</html>
