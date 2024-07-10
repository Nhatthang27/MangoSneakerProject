<%-- 
    Document   : navbar
    Created on : Jun 8, 2024, 4:06:08 PM
    Author     : Nhatthang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>navbar</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-between align-items-center">

                <a class="navbar-brand text-success logo h1 align-self-center" href="DispatcherProductController?action=HomePage">
                    Mango
                </a>

                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>


                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                    <div class="flex-fill">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="DispatcherProductController?action=HomePage">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="DispatcherProductController?action=GetAllProducts">Shop</a>
                            </li>

                        </ul>
                    </div>
                    <div class="navbar align-self-center d-flex">
                        <!--Mobile-->
                        <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                            <div class="input-group">
                                <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                                <div class="input-group-text">
                                    <i class="fa fa-fw fa-search"></i>
                                </div>
                            </div>
                        </div>
                        <!--End Mobile-->

                        <!--search icon-->
                        <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                            <i class="fa fa-fw fa-search text-dark mr-2"></i>
                        </a>  
                    </div>
                </div>

                <!-- Modal -->
                <div class="modal fade bg-white" id="templatemo_search" tabhome="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="w-100 pt-1 mb-5 text-right">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form action="DispatcherProductController" method="POST" class="modal-content modal-body border-0 p-0">
                            <div class="input-group mb-2">
                                <input type="text" class="form-control" id="inputModalSearch" name="searchNameValue" value="${param.searchNameValue}" placeholder="Search...">
                                <button type="submit" class="input-group-text bg-success text-light" name="action" value="GetAllProducts">
                                    <i class="fa fa-fw fa-search text-white"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </nav>
    </body>
</html>
