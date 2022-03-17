<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>TYL Clothing</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
        <link rel="stylesheet" href="CSS/style.css" />
        <link
            href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
            rel="stylesheet"
            />
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 200px;
            }
        </style>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <section class="home-bg">
                <img src="PNG/bg.jpg" />
            </section>
            <section class="home-sp">
                <div class="container">
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-4"></div>
                                <div class="col-sm-8">
                                    <h2>Manage <b>Product</b></h2>
                                </div>
                                <div class="col-sm-6">
                                    <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class='bx bx-add-to-queue'></i> <span>Add New Product</span></a>
                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>

                                    </th>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${listP}" var="o">
                                <tr>
                                    <td>

                                    </td>
                                    <td>${o.id}</td>
                                    <td>${o.name}</td>
                                    <td>
                                        <img src="${o.image}">
                                    </td>
                                    <td>${o.price} $</td>
                                    <td>
                                        <a href="loadu?pid=${o.id}&&tag=0"  class="edit" data-toggle="modal"><i class='bx bxs-edit'></i></a>
                                        <a href="#" onclick="myFunction(${o.id})" class="delete" data-toggle="modal"><i class='bx bx-trash' ></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <div class="page-trang">
                        <a href="manager?page=${1}">First</a>
                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                            <a class="page-num" href="manager?page=${i}">${i}</a>
                        </c:forEach>
                        <a href="manager?page=${requestScope.num}">Last</a>
                    </div>
                    <!-- Edit Modal HTML -->
                    <div id="addEmployeeModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="add" method="post">
                                    <div class="modal-header">						
                                        <h4 class="modal-title">Add Product</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">					
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input name="name" type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Image</label>
                                            <input name="image" type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Price</label>
                                            <input name="price" type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Title</label>
                                            <textarea name="title" class="form-control" required></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea name="description" class="form-control" required></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Category</label>
                                            <select name="category" class="form-select" aria-label="Default select example">
                                                <c:forEach items="${listCC}" var="o">
                                                    <option value="${o.cid}">${o.cname}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                        <input type="submit" class="btn btn-success" value="Add">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    </section>


                    <script>
                        function myFunction(id) {
                            let text = "Bạn chắc chắn muốn xóa chứ?\nTôi chắc chắn OK or Cancel.";
                            if (confirm(text) === true) {
                                window.location.href = 'delete?pid=' + id + '&&tag=0';
                            }
                        }
                    </script>
                    <!-- Swiper JS -->
                    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
                    <script src="JS/script.js"></script>
                    <script src="JS/manager.js" type="text/javascript"></script>
                    </body>
                    </html>