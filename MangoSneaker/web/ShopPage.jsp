<%-- 
    Document   : shop
    Created on : May 30, 2024, 6:27:14 PM
    Author     : Nhatthang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="mangosneaker.model.dto.ProductDTO" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Mango Sneaker - Product Listing Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    </head>

    <body>
        <!-- Start Top Nav -->
        <%@include file="TopNav.jsp" %>
        <!-- Close Top Nav -->

        <!-- Header -->
        <%@include file="Header.jsp" %>
        <!-- Close Header -->

        <!-- Start Content -->
        <div class="container py-5">
            <div class="row">
                <h2 class="col-md-12 text-center">
                    <c:choose>
                        <c:when test="${not empty param.searchNameValue}">
                            Search Results For: '${param.searchNameValue}'
                        </c:when>
                    </c:choose>
                </h2>

                <!--                <div class="col-lg-3">
                                    <h1 class="h2 pb-4">Categories</h1>
                                    <ul class="list-unstyled templatemo-accordion">
                                        <li class="pb-3">
                                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                                Gender
                                                <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                                            </a>
                                            <ul class="collapse show list-unstyled pl-3">
                                                <li><a class="text-decoration-none" href="#">Men</a></li>
                                                <li><a class="text-decoration-none" href="#">Women</a></li>
                                            </ul>
                                        </li>
                                        <li class="pb-3">
                                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                                Sale
                                                <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                                            </a>
                                            <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                                                <li><a class="text-decoration-none" href="#">Sport</a></li>
                                                <li><a class="text-decoration-none" href="#">Luxury</a></li>
                                            </ul>
                                        </li>
                                        <li class="pb-3">
                                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                                Product
                                                <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                                            </a>
                                            <ul id="collapseThree" class="collapse list-unstyled pl-3">
                                                <li><a class="text-decoration-none" href="#">Bag</a></li>
                                                <li><a class="text-decoration-none" href="#">Sweather</a></li>
                                                <li><a class="text-decoration-none" href="#">Sunglass</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>-->

                <div class="col-lg-12">
                    <form class="row" id="sortForm" action="DispatcherProductController?action=GetAllProducts" method="POST">
                        <input type="hidden" name="cid" value="${param.cid}" id="cidInput">
                        <input type="hidden" name="searchNameValue" value="${param.searchNameValue}">

                        <!--Category-->
                        <div class="col-md-6">
                            <ul class="list-inline shop-top-menu pb-3 pt-1">
                                <li class="list-inline-item hover-pointer">
                                    <a class="h3 text-dark text-decoration-none mr-3" onclick="updateCidValueAndSubmit(0)">All</a>
                                </li>
                                <c:forEach items="${requestScope.cateList}" var="cate">
                                    <li class="list-inline-item hover-pointer">
                                        <a class="h3 text-dark text-decoration-none mr-3" onclick="updateCidValueAndSubmit(${cate.id})">${cate.name}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>

                        <!--Sort-->
                        <div class="col-md-6 pb-4">
                            <div class="d-flex align-items-center justify-content-end">
                                <label for="sort" style="margin-right: 10px;">Sort By</label>
                                <select id="sort" name="sortType" class="form-control" style="width: auto;" onchange="document.getElementById('sortForm').submit();">
                                    <option value="discount" ${param.sortType == 'newest' ? 'selected' : ''}>Newest</option>
                                    <option value="priceHighLow" ${param.sortType == 'priceHighLow' ? 'selected' : ''} >Price: High-Low</option>
                                    <option value="priceLowHigh" ${param.sortType == 'priceLowHigh' ? 'selected' : ''}>Price: Low-High</option>
                                </select>
                            </div>
                        </div>

                    </form>
                    <div class="row">
                        <c:forEach items="${requestScope.proList}" var="p">
                            <form class="col-md-3" action="DispatcherProductController?action=GetSingleProduct" method="POST">
                                <div class="card mb-4 product-wap rounded-0">
                                    <input type="hidden" name="productId" value="${p.id}">
                                    <div class="card rounded-0">
                                        <button type="submit" class="button-reset">
                                            <img class="card-img rounded-0 img-fluid" src="assets/img/product/${p.img}">
                                        </button>
                                    </div>
                                    <div class="card-body">
                                        <button type="submit" class="button-reset">
                                            <p class="fw-bold h3">${p.name}</p>
                                            <p class="text-start mb-0 fw-normal">${p.price}</p>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Content -->

        <!-- Start Brands -->
        <section class="bg-light py-5">
            <div class="container my-4">
                <div class="row text-center py-3">
                    <div class="col-lg-6 m-auto">
                        <h1 class="h1">Our Brands</h1>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                            Lorem ipsum dolor sit amet.
                        </p>
                    </div>
                    <div class="col-lg-9 m-auto tempaltemo-carousel">
                        <div class="row d-flex flex-row">
                            <!--Controls-->
                            <div class="col-1 align-self-center">
                                <a class="h1" href="#multi-item-example" role="button" data-bs-slide="prev">
                                    <i class="text-light fas fa-chevron-left"></i>
                                </a>
                            </div>
                            <!--End Controls-->

                            <!--Carousel Wrapper-->
                            <div class="col">
                                <div class="carousel slide carousel-multi-item pt-2 pt-md-0" id="multi-item-example" data-bs-ride="carousel">
                                    <!--Slides-->
                                    <div class="carousel-inner product-links-wap" role="listbox">

                                        <!--First slide-->
                                        <div class="carousel-item active">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End First slide-->

                                        <!--Second slide-->
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End Second slide-->

                                        <!--Third slide-->
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End Third slide-->

                                    </div>
                                    <!--End Slides-->
                                </div>
                            </div>
                            <!--End Carousel Wrapper-->

                            <!--Controls-->
                            <div class="col-1 align-self-center">
                                <a class="h1" href="#multi-item-example" role="button" data-bs-slide="next">
                                    <i class="text-light fas fa-chevron-right"></i>
                                </a>
                            </div>
                            <!--End Controls-->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End Brands-->


        <!-- Start Footer -->
        <footer class="bg-dark" id="tempaltemo_footer">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-success border-bottom pb-3 border-light logo">Zay Shop</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li>
                                <i class="fas fa-map-marker-alt fa-fw"></i>
                                123 Consectetur at ligula 10660
                            </li>
                            <li>
                                <i class="fa fa-phone fa-fw"></i>
                                <a class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                            </li>
                            <li>
                                <i class="fa fa-envelope fa-fw"></i>
                                <a class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="#">Luxury</a></li>
                            <li><a class="text-decoration-none" href="#">Sport Wear</a></li>
                            <li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
                            <li><a class="text-decoration-none" href="#">Women's Shoes</a></li>
                            <li><a class="text-decoration-none" href="#">Popular Dress</a></li>
                            <li><a class="text-decoration-none" href="#">Gym Accessories</a></li>
                            <li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
                        </ul>
                    </div>

                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="#">Home</a></li>
                            <li><a class="text-decoration-none" href="#">About Us</a></li>
                            <li><a class="text-decoration-none" href="#">Shop Locations</a></li>
                            <li><a class="text-decoration-none" href="#">FAQs</a></li>
                            <li><a class="text-decoration-none" href="#">Contact</a></li>
                        </ul>
                    </div>

                </div>

                <div class="row text-light mb-4">
                    <div class="col-12 mb-3">
                        <div class="w-100 my-3 border-top border-light"></div>
                    </div>
                    <div class="col-auto me-auto">
                        <ul class="list-inline text-left footer-icons">
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="subscribeEmail">Email address</label>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                            <div class="input-group-text btn-success text-light">Subscribe</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="w-100 bg-black py-3">
                <div class="container">
                    <div class="row pt-2">
                        <div class="col-12">
                            <p class="text-left text-light">
                                Copyright &copy; 2021 Company Name 
                                | Designed by <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </footer>
        <!-- End Footer -->

        <!-- Start Script -->
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
        <script>
                                    function submitSortForm() {
                                        document.getElementById('sortForm').submit();
                                    }
                                    function updateCidValueAndSubmit(value) {
                                        document.getElementById('cidInput').value = value;
                                        document.getElementById('sortForm').submit();
                                    }

        </script>
        <!-- End Script -->
    </body>

</html>