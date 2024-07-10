<%-- 
    Document   : header
    Created on : Jul 7, 2024, 1:46:37 AM
    Author     : catlinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mango Sneaker</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/logo_transparent.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <style>
            .custom-button {
                background-color: #f5f5f5;
                border: 1px solid #ccc;
                border-radius: 25px;
                padding: 10px 20px;
                color: #000;
                text-align: center;
                font-size: 16px;
                text-decoration: none;
                margin-right: 10px;
            }

            .custom-button:hover {
                background-color: #e0e0e0;
                border-color: #bbb;
                color: #000;
            }

            .ml-4 {
                margin-left: 1.5rem;
            }
        </style>
    </head>
    <body>

        <!-- Close Top Nav -->


        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-between align-items-center">

                

                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                    <div class="flex-fill">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            
                            <li class="nav-item">
                                <a class="nav-link" href="AboutUsPage.jsp">About</a>
                            </li>
                            

                        </ul>
                    </div>
                    <div class="navbar align-self-center d-flex">

                        <c:if test="${sessionScope.information != null}" >
                            <!--Cart icon-->
                            <a class="nav-icon position-relative text-decoration-none" href="CartPage.jsp">
                                <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                                <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                            </a>
                            <!--user icon-->
                            <a class="nav-icon position-relative text-decoration-none" href="MainAuthenticationController?action=ProfilePage">
                                <i class="fa fa-fw fa-user text-dark mr-3"></i>
                                <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
                            </a>
                        </c:if>

                        <c:if test="${sessionScope.information == null}" >
                            <p class="text-center">
                                <a class="custom-button ml-4" href="MainAuthenticationController?action=AuthenticationPage">Login/Register</a>
                            </p>
                        </c:if>


                    </div>
                </div>

            </div>
        </nav>
        <!-- Close Header -->
    </body>
</html>
