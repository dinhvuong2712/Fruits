<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 6/16/2021
  Time: 7:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<security:authorize access="isAuthenticated()">
    <security:authentication property="principal" var="user"></security:authentication>
</security:authorize>

<div class="header w-100">
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">

        <div class="logo-wrap d-flex justify-content-center align-items-center">
            <a class="navbar-brand text-center fw-bold fs-3 me-0 pt-2 d-flex justify-content-center align-items-center"
               href="#">
                <ion-icon name="logo-octocat"></ion-icon>
                <span class="px-2">Logo</span>
            </a>
            <button
                    class="btn btn-outline-light rounded-circle d-flex justify-content-center align-items-center p-2"
                    type="button" style="width: 40px; height: 40px;" id="toggler-sidebar">
                <ion-icon name="menu-outline" class="fs-3 text-black-50"></ion-icon>
                <ion-icon name="chevron-back-outline" class="fs-3 text-black-50"></ion-icon>
            </button>
        </div>
        <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                data-bs-target="#menu-top" aria-controls="collapsibleNavId" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse position-relative" id="menu-top">
            <form class="d-flex me-auto my-2 my-lg-0">
                <div class="input-group">
                    <input class="form-control border-0 bg-light" type="text" placeholder="Search">
                    <button class="btn btn-light py-0 fs-4 d-flex align-items-center" type="submit">
                        <ion-icon name="search-outline" class="text-primary md hydrated" role="img" aria-label="search outline"></ion-icon>
                    </button>
                </div>
                <!-- <div class="auto-complete dropdown-menu py-0 show" aria-labelledby="input_search_header" data-bs-popper="none">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">An item</li>
                        <li class="list-group-item">A second item</li>
                        <li class="list-group-item">A third item</li>
                        <li class="list-group-item">A fourth item</li>
                        <li class="list-group-item">And a fifth one</li>
                      </ul>
                </div> -->
            </form>
            <ul class="navbar-nav align-items-center position-relative mt-2 mt-lg-0">
                <li class="nav-item dropdown mx-1 active">
                    <button
                            class="btn btn-outline-light text-secondary border-0 p-0 me-3 fs-4 d-flex align-items-center"
                            id="notificationDropdown_1" data-bs-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                        <ion-icon name="notifications"></ion-icon>
                    </button>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="notificationDropdown">
                        <a class="dropdown-item" href="#">Action 1</a>
                        <a class="dropdown-item" href="#">Action 2</a>
                    </div>
                </li>
                <li class="nav-item dropdown mx-1">
                    <button
                            class="btn btn-outline-light text-secondary border-0 p-0 me-3 fs-4 d-flex align-items-center"
                            id="notificationDropdown_2" data-bs-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                        <ion-icon name="mail"></ion-icon>
                    </button>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="notificationDropdown">
                        <a class="dropdown-item" href="#">Action 1</a>
                        <a class="dropdown-item" href="#">Action 2</a>
                    </div>
                </li>
                <li class="nav-item px-4">
                    <span class="icon-bar border" id="line-column"></span>
                </li>
                <li class="nav-item dropdown mx-4">
                    <button class="btn btn-light text-secondary border-0 d-flex align-items-center py-0"
                            href="#" id="accountDropdown" data-bs-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                        <span class="pe-3">Account</span>
                        <img src="https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"
                             class="w-100 h-100 rounded-circle" alt="">
                    </button>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="accountDropdown">
                        <a class="dropdown-item" href="#">Hi <i>${user.username}</i></a>
                        <a class="dropdown-item" href="/account/logout">Logout</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</div>
