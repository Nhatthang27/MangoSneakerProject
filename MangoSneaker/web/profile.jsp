<%-- 
    Document   : profile
    Created on : Jun 5, 2024, 11:47:02 PM
    Author     : catlinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Profile</title>
        <link rel="stylesheet" href="./assets/css/profile.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    </head>
    <body>
        <div class="container light-style flex-grow-1 container-p-y">
            <h4 class="font-weight-bold py-3 mb-4" style="color: #5a958a; text-align: center;">
                Account settings
            </h4>
            <div class="card overflow-hidden">
                <div class="row no-gutters row-bordered row-border-light">
                    <div class="col-md-3 pt-0">
                        <div class="list-group list-group-flush account-settings-links">
                            <a class="list-group-item list-group-item-action active" data-toggle="list"
                               href="#account-general">General</a>
                            <a class="list-group-item list-group-item-action" data-toggle="list"
                               href="#account-change-password">Change password</a>
                            <a id='log-out' class="list-group-item list-group-item-action" data-toggle="list"
                               href="#account-logout">Logout</a>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane fade active show" id="account-general">

                                <hr class="border-light m-0">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label class="form-label">Username</label>
                                        <input type="text" class="form-control mb-1" value="nmaxwell">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Name</label>
                                        <input type="text" class="form-control" value="Nelle Maxwell">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">E-mail</label>
                                        <input type="text" class="form-control mb-1" value="nmaxwell@mail.com">
                                        <div class="alert alert-warning mt-3">
                                            Your email is not confirmed. Please check your inbox.<br>
                                            <a href="javascript:void(0)">Resend confirmation</a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Address</label>
                                        <input type="text" class="form-control" value="China">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Phone</label>
                                        <input type="text" class="form-control" value="+0 (123) 456 7891">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="account-change-password">
                                <div class="card-body pb-2">
                                    <div class="form-group">
                                        <label class="form-label">Current password</label>
                                        <input type="password" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">New password</label>
                                        <input type="password" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Repeat new password</label>
                                        <input type="password" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="account-logout">
                                <div class="card-body pb-2">
                                    <div class="form-group">
                                        <p>Are you sure you want to log out?</p>
                                        <div style="display: flex; justify-content: start;">
                                            <form action="logout">
                                                <button type="submit" class="btn btn-danger" id="logoutButton" style="margin: 0 5px;">Log out</button>
                                            </form>
                                            <form action="delCustomer">
                                                <button type="submit" class="btn btn-danger" id="delButton" style="margin: 0 5px;">Delete Account</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="text-right mt-3">
                <button type="button" class="btn btn-primary" id="saveButton"
                        style="background-color: #5a958a; border: 2px solid #5a958a">Save changes</button>&nbsp;
                <button type="button" class="btn btn-default" id="cancelButton">Cancel</button>
            </div>
        </div>
        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript">
        </script>
        <!--        <script type="text/javascript">
                    window.addEventListener("load", function () {
                        checkFunction();
                    });
                    function checkFunction() {
                        var logout = document.getElementById('log-out');
                        logout.onclick = function () {
                            var saveButton = document.getElementById('saveButton');
                            if (saveButton) {
                                saveButton.style.display = 'none';
                            };
                            var cancelButton = document.getElementById('cancelButton');
                            if (cancelButton) {
                                cancelButton.style.display = 'none';
                            }
                        };
                    }
                </script>-->

    </body>
</html>
