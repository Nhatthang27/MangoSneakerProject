<%-- 
    Document   : shop-single
    Created on : May 30, 2024, 6:26:59 PM
    Author     : Nhatthang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Zay Shop - Product Detail Page</title>
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

        <!-- Slick -->
        <link rel="stylesheet" type="text/css" href="assets/css/slick.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
    </head>

    <body>    
        <!-- Start Top Nav -->
        <%@include file="topnav.jsp" %>
        <!-- Close Top Nav -->

        <!-- Header -->
        <%@include file="navbar.jsp" %>
        <!-- Close Header -->

        <!-- Modal -->
        <div class="modal fade bg-white" id="templatemo_search" tabhome="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="w-100 pt-1 mb-5 text-right">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="" method="get" class="modal-content modal-body border-0 p-0">
                    <div class="input-group mb-2">
                        <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                        <button type="submit" class="input-group-text bg-success text-light">
                            <i class="fa fa-fw fa-search text-white"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>



        <!-- Open Content -->
        <section class="bg-light">
            <div class="container pb-5">
                <div class="row">
                    <div class="col-lg-6 mt-5">
                        <div class="card mb-3">
                            <img class="card-img img-fluid" src="assets/img/product/${product.img}" alt="Card image cap" id="product-detail">
                            <img class="card-img img-fluid" src="assets/img/product/${product.img}" alt="Card image cap" id="product-detail">

                        </div>
                        <!--                    <div class="row">
                                                Start Controls
                                                <div class="col-1 align-self-center">
                                                    <a href="#multi-item-example" role="button" data-bs-slide="prev">
                                                        <i class="text-dark fas fa-chevron-left"></i>
                                                        <span class="sr-only">Previous</span>
                                                    </a>
                                                </div>
                                                End Controls
                                                Start Carousel Wrapper
                                                <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" data-bs-ride="carousel">
                                                    Start Slides
                                                    <div class="carousel-inner product-links-wap" role="listbox">
                        
                                                        First slide
                                                        <div class="carousel-item active">
                                                            <div class="row">
                                                                <div class="col-4">
                                                                    <a href="#">
                                                                        <img class="card-img img-fluid" src="assets/img/product_single_01.jpg" alt="Product Image 1">
                                                                    </a>
                                                                </div>
                                                                <div class="col-4">
                                                                    <a href="#">
                                                                        <img class="card-img img-fluid" src="assets/img/product_single_02.jpg" alt="Product Image 2">
                                                                    </a>
                                                                </div>
                                                                <div class="col-4">
                                                                    <a href="#">
                                                                        <img class="card-img img-fluid" src="assets/img/product_single_03.jpg" alt="Product Image 3">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        /.First slide
                        
                                                        Second slide
                                                        <div class="carousel-item">
                                                            <div class="row">
                                                                <div class="col-4">
                                                                    <a href="#">
                                                                        <img class="card-img img-fluid" src="assets/img/product_single_04.jpg" alt="Product Image 4">
                                                                    </a>
                                                                </div>
                                                                <div class="col-4">
                                                                    <a href="#">
                                                                        <img class="card-img img-fluid" src="assets/img/product_single_05.jpg" alt="Product Image 5">
                                                                    </a>
                                                                </div>
                                                                <div class="col-4">
                                                                    <a href="#">
                                                                        <img class="card-img img-fluid" src="assets/img/product_single_06.jpg" alt="Product Image 6">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        /.Second slide
                        
                                                        Third slide
                                                        <div class="carousel-item">
                                                            <div class="row">
                                                                <div class="col-4">
                                                                    <a href="#">
                                                                        <img class="card-img img-fluid" src="assets/img/product_single_07.jpg" alt="Product Image 7">
                                                                    </a>
                                                                </div>
                                                                <div class="col-4">
                                                                    <a href="#">
                                                                        <img class="card-img img-fluid" src="assets/img/product_single_08.jpg" alt="Product Image 8">
                                                                    </a>
                                                                </div>
                                                                <div class="col-4">
                                                                    <a href="#">
                                                                        <img class="card-img img-fluid" src="assets/img/product_single_09.jpg" alt="Product Image 9">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        /.Third slide
                                                    </div>
                                                    End Slides
                                                </div>
                                                End Carousel Wrapper
                                                Start Controls
                                                <div class="col-1 align-self-center">
                                                    <a href="#multi-item-example" role="button" data-bs-slide="next">
                                                        <i class="text-dark fas fa-chevron-right"></i>
                                                        <span class="sr-only">Next</span>
                                                    </a>
                                                </div>
                                                End Controls
                                            </div>-->
                    </div>
                    <!-- col end -->
                    <div class="col-lg-6 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h1 class="h2">${product.name}</h1>
                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <h6>Brand: <span class="fw-light">${product.category.name}</span> </h6>
                                    </li>
                                </ul>
                                <p class="h3 py-2 fw-bold">$${product.price}</p>


                                <form action="DispatcherProductController" method="POST">
                                    <input type="hidden" name="productId" value="${product.id}">
                                    <div class="row">
                                        <div class="col-auto">
                                            <ul class="list-inline pb-3">
                                                <li class="list-inline-item fw-bold">Size : 
                                                    <input type="hidden" name="productSize" id="productSize" value="">
                                                </li>
                                                <c:forEach var="szQuan" items="${szQuan}">
                                                    <li class="list-inline-item"><span class="btn btn-success btn-size">${szQuan.key}</span></li>
                                                    </c:forEach>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-auto">
                                            <ul class="list-inline pb-3">
                                                <li class="list-inline-item text-right fw-bold">
                                                    Quantity
                                                    <input type="hidden" name="productQuantity" id="productQuantity" value="1">
                                                </li>
                                                <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
                                                <li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>
                                                <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="row pb-3">
                                        <div class="col d-grid">
                                            <button type="submit" class="btn btn-success btn-lg" name="action" value="buy">Buy</button>
                                        </div>
                                        <div class="col d-grid">
                                            <button type="submit" class="btn btn-success btn-lg" name="action" value="AddToCart">Add To Cart</button>
                                        </div>
                                    </div>
                                </form>

                                <p>${product.description}</p>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Close Content -->

        <!-- Start Article -->
        <section class="py-5">
            <div class="container">
                <div class="row text-left p-2 pb-3">
                    <h4>Related Products</h4>
                </div>

                <!--Start Carousel Wrapper-->
                <div id="carousel-related-product">
                    <c:forEach items="${requestScope.proList}" var="p">
                        <div class="p-2 pb-3">
                            <div class="product-wap card rounded-0">
                                <form action="DispatcherProductController?action=GetSingleProduct" method="POST">
                                    <input type="hidden" name="pId" value="${p.id}">
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

                                </form>

                            </div>
                        </div>
                    </c:forEach>


                </div>
        </section>
        <!-- End Article -->


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
        <!-- End Script -->

        <!-- Start Slider Script -->
        <script src="assets/js/slick.min.js"></script>
        <script>
            $('#carousel-related-product').slick({
                infinite: true,
                arrows: false,
                slidesToShow: 4,
                slidesToScroll: 3,
                dots: true,
                responsive: [{
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 3
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 3
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 3
                        }
                    }
                ]
            });
        </script>
        <!-- End Slider Script -->

    </body>

</html>