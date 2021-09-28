
<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 8/27/2021
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-xl-5 col-lg-6 col-md-8 col-sm-11">
    <!-- Social login form-->
    <div class="card my-5">
        <div class="card-body p-5 text-center">
            <div class="h3 fw-light mb-3">Sign In</div>
            <!-- Social login links-->
            <div class="d-flex justify-content-center align-items-center">
                <a class="btn btn-icon btn-facebook mx-1 d-flex align-items-center" href="#!">
                    <ion-icon name="logo-facebook" class="text-primary fs-2"></ion-icon>
                </a>
                <a class="btn btn-icon btn-github mx-1 d-flex align-items-center" href="#!">
                    <ion-icon name="logo-github" class="fs-2"></ion-icon>
                </a>
                <a class="btn btn-icon btn-google mx-1 d-flex align-items-center" href="#!"><img
                        src="https://img.icons8.com/color/48/000000/google-logo.png" style="
                    width: 30px;
                    height: 34px;"/></a>
                <a class="btn btn-icon btn-twitter mx-1 d-flex align-items-center" href="#!">
                    <ion-icon name="logo-twitter" class="text-primary fs-2"></ion-icon>
                </a>
            </div>
        </div>
        <hr class="my-0">
        <div class="card-body p-5">
            <!-- Login form-->
            <c:if test="${!empty error}">
                <div class="alert alert-danger">${error}</div>
            </c:if>
            <form id="form" method="post">

                <!-- Form Group (email address)-->
                <div class="mb-3">
                    <label class="text-gray-600 small">Email address</label>
                    <input class="form-control form-control-solid" type="text" name="username" placeholder="">
                </div>
                <!-- Form Group (password)-->
                <div class="mb-3">
                    <label class="text-gray-600 small">Password</label>
                    <input class="form-control form-control-solid" type="password" name="password" id="password" placeholder="">
                </div>
                <!-- Form Group (forgot password link)-->
                <div class="mb-3"><a class="small" href="auth-password-social.html">Forgot your password?</a></div>
                <!-- Form Group (login box)-->
                <div class="d-flex align-items-center justify-content-between mb-0">
                    <div class="form-check">
                        <input class="form-check-input" id="checkRememberPassword" type="checkbox" value="">
                        <label class="form-check-label" for="checkRememberPassword">Remember password</label>
                    </div>
                    <button type="submit" id="login_submit" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
        <hr class="my-0">
        <div class="card-body px-5 py-4">
            <div class="small text-center">
                New user?
                <a href="auth-register-social.html">Create an account!</a>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/md5.js"></script>
<script src="<c:url value="/resources/js/login/login.js"/>"></script>