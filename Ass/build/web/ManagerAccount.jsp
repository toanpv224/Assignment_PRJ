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
                                <div class="col-sm-4">
                                    <div class="col-sm-12">
                                        <h2>Manage <b>Account</b></h2>
                                    </div>
                                    <div class="col-sm-6">
                                        <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class='bx bx-add-to-queue'></i> <span>Add New Account</span></a>
                                    </div>
                                    <div class="col-sm-12"> </div>
                                </div>
                            </div>
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>

                                        </th>
                                        <th>ID</th>
                                        <th>UserName</th>
                                        <th>PassWord</th>
                                        <th>Normal</th>
                                        <th>Is Seller</th>
                                        <th>Is Admin</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listP}" var="o">
                                    <tr>
                                        <td>

                                        </td>
                                        <td>${o.id}</td>
                                        <td>${o.user}</td>
                                        <td>${o.pass}</td>
                                        <c:if test="${o.isSell ==0 && o.isAdmin ==0}">
                                            <td><input type="radio" checked name="${o.user}" value="1" ></td>
                                            <td><input type="radio" name="${o.user}" value="1" ></td>
                                            <td><input type="radio" name="${o.user}" value="1" ></td>
                                            </c:if>
                                            <c:if test="${o.isSell ==1 && o.isAdmin ==0}">
                                            <td><input type="radio" name="${o.user}" value="1" ></td>
                                            <td><input type="radio" checked name="${o.user}" value="1" ></td>
                                            <td><input type="radio" name="${o.user}" value="1" ></td>
                                            </c:if>
                                            <c:if test="${o.isSell ==0 && o.isAdmin ==1}">
                                            <td><input type="radio" name="${o.user}" value="1" ></td>
                                            <td><input type="radio" name="${o.user}" value="1" ></td>
                                            <td><input type="radio" checked name="${o.user}" value="1" ></td>
                                            </c:if>                                    
                                        <td>
                                            <a href="loadu?pid=${o.id}&&tag=1"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                            <a href="#" onclick="myFunction(${o.id})" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="page-trang">
                <a href="manageraccount?page=${1}">First</a>
                <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                    <a class="page-num" href="manageraccount?page=${i}">${i}</a>
                </c:forEach>
                <a href="manageraccount?page=${requestScope.num}">Last</a>
            </div>
            <!-- Edit Modal HTML -->
            <div id="addEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="addacc" method="post">
                            <div class="modal-header" >						
                                <h4 class="modal-title">Add Account</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">	
                                <p class="text-danger">${requestScope.mess}</p>
                                <div class="form-group">
                                    <label>UserName</label>
                                    <input name="user" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>PassWord</label>
                                    <input name="pass" type="text" class="form-control" required>
                                </div>                           
                                <div class="form-group">
                                    <label>Account is:</label>
                                    <select name="roll" class="form-select" aria-label="Default select example">
                                        <option value="0">Normal</option>
                                        <option value="1">Seller</option>
                                        <option value="2">Admin</option>
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
                    window.location.href = 'delete?pid=' + id + '&&tag=1';
                }
            }
        </script>
        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script src="JS/script.js"></script>
        <script src="JS/manager.js" type="text/javascript"></script>
    </body>
</html>