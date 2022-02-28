<%@page import="Model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


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
        <link rel="stylesheet" href="CSS/style.css">

        <!-- ===== Boxicons CSS ===== -->
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

        <title>Responsive Navigation Menu Bar</title>
    </head>
    <body>
        <nav>
            <div class="nav-bar">
                <i class='bx bx-menu sidebarOpen' ></i>

                <span class="logo navLogo"><a href="#">TakeYourLove</a></span>

                <div class="menu">
                    <div class="logo-toggle">
                        <span class="logo"><a href="#">TakeYourLove</a></span>
                        <i class='bx bx-x siderbarClose'></i>
                    </div>

                    <ul class="nav-links">
                        <li><a href="#">Trang chủ</a></li>
                        <li>
                            <a href="#">Sản phẩm<i class='bx bxs-chevron-down arrow sp-arrow'></i></a>
                            <ul class="sp-sub-menu sub-menu">
                                <li><a href="#">Quần</a></li>
                                <li><a href="#">Áo</a></li>
                                <li><a href="#">Giày dép</a></li>
                                <li><a href="#">Phụ kiện</a></li>
                                <li>
                                    <a href="#">Xem thêm<i class='bx bxs-chevron-right arrow more-arrow'></i></a>  
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
                        <i class='bx bx-moon moon'></i>
                        <i class='bx bx-sun sun'></i>
                    </div>

                    <div class="searchBox">
                        <div class="searchToggle">
                            <i class='bx bx-x cancel'></i>
                            <i class='bx bx-search search'></i>
                        </div>

                        <div class="search-field">
                            <input type="text" placeholder="Tìm  kiếm...">
                            <i class='bx bx-search'></i>
                        </div>
                    </div>
                    <button onclick="togglePopup()" class="first-button">Đăng nhập</button>
                    <div class="popup" id="popup-1">
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup()">
                                ×</div>

                            <h1>Đăng nhập</h1> 
                            <div class="input-field"><input placeholder="Email" class="validate"></div>
                            <div class="input-field"><input placeholder="Password" class="validate"></div>
                            <button class="second-button">Đăng nhập</button>
                            <p>Bạn chưa có tài khoản? <a href="#">Đăng kí</a></p>


                        </div>
                    </div>

                </div>
            </div>
        </nav>
        <section class="home">
            <img src="PNG/bg.jpg"></img>
        </section>
        <div class="text">
            <p><h2>Test test test</h2>Sau bàn thắng của Bảo Toàn, trận đấu giằng co và vô cùng sôi nổi. U23 Thái Lan cố gắng dồn lên ép sân nhưng họ tỏ ra khá bế tắc trong việc tìm đường vào khung thành của U23 Việt Nam. Những "chú voi chiến trẻ" chỉ có thể gây sóng gió bằng các tình huống sút xa nhưng tất cả đều không vượt qua được đôi tay của "người nhện" Tuấn Hưng.

            Ở chiều ngược lại, U23 Việt Nam tận dụng việc U23 Thái Lan dâng cao để tạo ra nhiều pha tấn công nguy hiểm. Tuy nhiên, ở những tình huống cuối cùng, các chân sút của U23 Việt Nam đều tận dụng không thành công. Càng về cuối, sự từng trải của U23 Việt Nam càng được thể hiện khi các học trò HLV Đinh Thế Nam chơi bình tĩnh và bản lĩnh. Trong khi đó, U23 Thái Lan tỏ ra nóng vội và thiếu bình tĩnh. 

            Chung cuộc U23 Việt Nam đánh bại U23 Thái Lan 1-0 để đăng quang chức vô địch Giải U23 Đông Nam Á 2022.
        </p>
    </div>

    <section class="sp-section"> 
        <div class="swiper mySwiper container">
            <div class="swiper-wrapper content">
                <c:forEach items="${sessionScope.list}" var="o">
                <div class="swiper-slide card">
                    <div class="card-content">
                        <div class="image">
                            <img src="${o.image}" alt=""  />
                        </div>

                        <div class="name-product">
                            <span class="name">${o.name}</span>
                            <span class="title">${o.title}</span>
                        </div>

                        <div class="button">
                            <button class="aboutMe">About Me</button>
                            <button class="add-cart">
                                <a href="#" >Thêm<i class='bx bx-cart-alt'></i></a>
                            </button>
                        </div>
                    </div>
                </div>
                </c:forEach>               
            </div>
        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
    </section>

    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
                       var swiper = new Swiper(".mySwiper", {
                           slidesPerView: 3,
                           spaceBetween: 30,
                           slidesPerGroup: 3,
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

    <div class="modal-footer">

        <p><br>Email : Toanpv224@gmail.com <br> Address: Xã Đức Giang, huyện Hoài Đức, HN</p>
        <h5>&copy; Copyright 2022. Tyl.com</h5>

    </div>

    <script src="JS/script.js"></script>

</body>
</html>