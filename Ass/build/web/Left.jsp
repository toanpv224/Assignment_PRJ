

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
    <div class="card bg-lightt mb-3">
        <a href="category?cid=${0}" ><div class="card-header text-w text-uppercase"><i class="fa fa-list"></i> Categories</div></a>
        <ul class="list-group category_block">
            <c:forEach items="${sessionScope.listCC}" var="o">
                <li class="list-group-item text-w ${tag == o.cid ? "active":""}"><a href="category?cid=${o.cid}">${o.cname}</a></li>
            </c:forEach>
        </ul>
    </div>
</div>