<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav>
            <div class="nav-bar">
                <i class="bx bx-menu sidebarOpen"></i>

                <span class="logo navLogo"><a href="Home.jsp">TakeYourLove</a></span>

                <div class="menu">
                    <div class="logo-toggle">
                        <span class="logo"><a href="Home.jsp">TakeYourLove</a></span>
                        <i class="bx bx-x siderbarClose"></i>
                    </div>

                    <ul class="nav-links">
                        <li><a href="Home.jsp">Trang chủ</a></li>
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
