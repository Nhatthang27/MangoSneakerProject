<%-- 
    Document   : CartPage
    Created on : Jul 9, 2024, 3:49:42 PM
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
        <link href="assets/css/cart.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <section class="h-100 h-custom" style="background-color: #E7E9EB;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12">
                        <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                            <div class="card-body p-0">
                                <div class="row g-0">
                                    <div class="col-lg-8">
                                        <div class="p-5">
                                            <div class="d-flex justify-content-between align-items-center mb-5">
                                                <h1 class="fw-bold mb-0">My Cart</h1>
                                                <h6 class="mb-0 text-muted">${numItem} items</h6>
                                            </div>
                                            <hr class="my-4">
                                            <c:if test="${numItem > 0}">
                                                <c:forEach items="${cart}" var="pCart">
                                                    <c:set var="product" value="${pCart.product}"/>
                                                    <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                        <div class="col-md-2 col-lg-2 col-xl-2">
                                                            <img
                                                                src="assets/img/product/${product.img}"
                                                                class="img-fluid rounded-3" alt="${product.name}">
                                                        </div>
                                                        <div class="col-md-3 col-lg-3 col-xl-3">
                                                            <h6 class="text-muted">${product.category.name}</h6>
                                                            <h6 class="mb-0">${product.name}</h6>
                                                        </div>
                                                        <ul class="col-md-4 col-lg-3 col-xl-3">
                                                            <li class="list-inline-item col-3">
                                                                <span class="badge bg-secondary var-value">Size: ${pCart.size}</span>
                                                            </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <li class="list-inline-item col-1">
                                                                <span class="badge bg-secondary var-value">Quantity: ${pCart.quantity}</span>
                                                            </li>
                                                        </ul>

                                                        <div class="col-md-2 col-lg-2 col-xl-2 offset-lg-1">
                                                            <h6 class="mb-0">$ ${product.price}</h6>
                                                        </div>
                                                        <form action="DispatcherProductController" method="POST" class="col-md-1 col-lg-1 col-xl-1 text-end">                                                            
                                                            <input type="hidden" name="customerID" value="${sessionScope.information.id}">
                                                            <input type="hidden" name="productID" value="${product.id}">
                                                            <input type="hidden" name="size" value="${pCart.size}">
                                                            <button type="submit" name="action" value="DeleteProductInCart" class="button-reset text-muted">
                                                                <i class="fas fa-times"></i>
                                                            </button>
                                                        </form>

                                                    </div>

                                                </c:forEach>
                                            </c:if>
                                            <hr class="my-4">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 bg-body-tertiary">
                                        <c:if test="${numItem > 0}">
                                            <div class="p-5">
                                                <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
                                                <hr class="my-4">

                                                <div class="d-flex justify-content-between mb-4">
                                                    <h5 class="text-uppercase">${numItem} items</h5>
                                                    <h5>$ ${totalPrice}</h5>
                                                </div>

                                                <hr class="my-4">

                                                <div class="d-flex justify-content-between mb-5">
                                                    <h5 class="text-uppercase">Total price</h5>
                                                    <h5>$ ${totalPrice}</h5>
                                                </div>

                                                <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-dark btn-block btn-lg"
                                                         data-mdb-ripple-color="dark">Checkout</button>

                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer>
            <%@include file="Footer.jsp"%>
        </footer>

        <!-- Start Script -->
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
        <script>
            function increaseQuantity(element) {
                var container = element.parentNode.parentNode; // Lấy thẻ ul chứa nút được nhấn
                var span = container.querySelector('.var-value'); // Tìm thẻ span chứa giá trị trong cùng một ul
                var input = container.querySelector('.productQuantity'); // Tìm input trong cùng một ul
                var currentValue = parseInt(span.textContent);
                currentValue += 1;
                span.textContent = currentValue;
                input.value = currentValue;
            }

            function decreaseQuantity(element) {
                var container = element.parentNode.parentNode; // Lấy thẻ ul chứa nút được nhấn
                var span = container.querySelector('.var-value'); // Tìm thẻ span chứa giá trị trong cùng một ul
                var input = container.querySelector('.productQuantity'); // Tìm input trong cùng một ul
                var currentValue = parseInt(span.textContent);
                if (currentValue > 1) {
                    currentValue -= 1;
                    span.textContent = currentValue;
                    input.value = currentValue;
                }
            }

        </script>
        <!-- End Script -->
    </body>
</html>
