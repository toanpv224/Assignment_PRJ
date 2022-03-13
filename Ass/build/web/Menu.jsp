<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav>
    <div class="nav-bar">
        <i class="bx bx-menu sidebarOpen"></i>

        <span class="logo navLogo"><a href="home">TakeYourLove</a></span>

        <div class="menu">
            <div class="logo-toggle">
                <span class="logo"><a href="home">TakeYourLove</a></span>
                <i class="bx bx-x siderbarClose"></i>
            </div>

            <ul class="nav-links">
                <li><a href="home">Trang chủ</a></li>
                <li>
                    <a href="category?cid=${0}"
                       >Sản phẩm<i class="bx bxs-chevron-down arrow sp-arrow"></i
                        ></a>
                    <ul class="sp-sub-menu sub-menu">
                        <li><a href="category?cid=${3}">Quần</a></li>
                        <li><a href="category?cid=${2}">Áo thun</a></li>
                        <li><a href="category?cid=${1}">Áo khoác</a></li>
                        <li><a href="category?cid=${4}">Phụ kiện</a></li>
                        <li>
                            <a href="category?cid=${0}"
                               >Xem thêm<i
                                    class="bx bxs-chevron-right arrow more-arrow"
                                    ></i
                                ></a>
                        </li>
                    </ul>
                </li>
                <c:if test="${sessionScope.acc != null || sessionScope.acc.isSell == 1 || sessionScope.acc.isAdmin == 1}">
                    <li>
                        <a href="#">Xin chào ${sessionScope.acc.user}</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1}">  
                    <li>
                        <a href="manager">Quản lý Product</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isAdmin == 1}">  
                    <li>
                        <a href="#">Quản lý Account</a>
                    </li>
                </c:if>
            </ul>
        </div>

        <div class="darkLight-searchBox">
            <a href="showcart?index=cart">
                <div class="cartBox">

                    <i class='bx bx-cart-alt'></i>                
                </div>
            </a>
            <div class="dark-light">
                <i class="bx bx-moon moon"></i>
                <i class="bx bx-sun sun"></i>
            </div>
            <form action="search" method="post">
                <div class="searchBox">
                    <div class="searchToggle">
                        <i class="bx bx-x cancel"></i>
                        <i class="bx bx-search search"></i>
                    </div>

                    <div class="search-field">
                        <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" placeholder="Tìm  kiếm..." />
                        <i class="bx bx-search"></i>
                    </div>
                </div>
            </form>
            <c:if test="${sessionScope.acc == null}">
                <a href="Loginform.jsp" class="first-button">Đăng nhập</a>
            </c:if>
            <c:if test="${sessionScope.acc != null || sessionScope.acc.isSell == 1 || sessionScope.acc.isAdmin == 1}">  
                <a href="logout" class="first-button">Đăng xuất</a>
            </c:if>
        </div>
    </div>
</nav>


