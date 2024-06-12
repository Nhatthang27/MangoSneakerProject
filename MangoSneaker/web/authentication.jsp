<%-- 
    Document   : login
    Created on : Jun 3, 2024, 5:58:53 PM
    Author     : catlinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="./assets/css/authenticationstyle.css">
        <title>Login/Register</title>
    </head>
    <body>
        <div class="container" id="container">
            <div class="form-container sign-up">
                <form action="register" method="post" id="registerForm">
                    <h1>Create Account</h1>
                    <span style="color: red" id="ms">${requestScope.ms}</span>
                    <input type="text" placeholder="First Name" name="firstname">
                    <input type="text" placeholder="Last Name" name="lastname">
                    <input type="text" placeholder="Username" name="username">
                    <input type="tel" placeholder="Phone" name="phone">
                    <input type="email" placeholder="Email" name="mail">
                    <input type="password" placeholder="Password" name="password">
                    <button>Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in">
                <form action="login" method="post">
                    <h1>Sign In</h1>
                    <span style="color: red">${requestScope.err}</span>
                    <input type="text" placeholder="Username" name="username">
                    <input type="password" placeholder="Password" name="password">
                    <a href="#">Forget Your Password?</a>
                    <button>Sign In</button>
                </form>
            </div>
            <div class="toggle-container">
                <div class="toggle">
                    <div class="toggle-panel toggle-left">
                        <h1>Welcome Back!</h1>
                        <p>Enter your personal details to use all of site features</p>
                        <button class="hidden" id="login">Sign In</button>
                    </div>
                    <div class="toggle-panel toggle-right">
                        <h1>Hello, Friend!</h1>
                        <p>Register with your personal details to use all of site features</p>
                        <button class="hidden" id="register">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>

        <script src="./assets/js/authentication.js"></script>
    </body>
</html>