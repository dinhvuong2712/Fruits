<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 6/16/2021
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar-wrapper d-flex flex-column align-items-center bg-white fixed-top" id="sidebar">
    <nav class="navbar navbar-expand-lg navbar-light flex-column align-items-center w-100 p-0">
        <ul class="navbar-nav flex-column mt-3 mb-4 w-100 position-relative">
            <div class="accordion accordion-flush w-100" id="accordionFlushExample">
                <li class="nav-item">
                    <a class="nav-link active d-flex align-items-center" href="/admin/home/index">
                        <ion-icon name="hardware-chip-outline" class="text-gray-500 fs-4 pe-0">
                        </ion-icon>
                        <span class="ps-3">Dashboard</span>
                    </a>
                </li>
                <li class="nav-item">
                    <div class="accordion-item border-none">
                        <a class="nav-link accordion-button collapsed" type="button"
                           data-bs-toggle="collapse" data-bs-target="#flush-collapse-2"
                           aria-controls="flush-collapse-3">
                            <ion-icon name="hardware-chip-outline" class="text-gray-500 fs-4 pe-0">
                            </ion-icon>
                            <span class="ps-3">Coupon Infor</span>
                        </a>
                        <div id="flush-collapse-2" class="accordion-collapse collapse"
                             aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body border-start border-1">
                                <a class="nav-link" href="/admin/bill/index">Bill</a>
                                <a class="nav-link" href="/admin/enter-coupon/index">Enter coupon</a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <div class="accordion-item border-none">
                        <a class="nav-link accordion-button collapsed" type="button"
                           data-bs-toggle="collapse" data-bs-target="#flush-collapse-3"
                           aria-controls="flush-collapse-4">
                            <ion-icon name="hardware-chip-outline" class="text-gray-500 fs-4 pe-0">
                            </ion-icon>
                            <span class="ps-3">Product Infor</span>
                        </a>
                        <div id="flush-collapse-3" class="accordion-collapse collapse"
                             aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body border-start border-1">
                                <a class="nav-link" href="/admin/unit/index">Unit</a>
                                <a class="nav-link" href="/admin/category/index">Category</a>
                                <a class="nav-link" href="/admin/goods/index">Goods</a>
                            </div>
                        </div>
                    </div>
                </li>
                <div class="accordion-item border-none">
                    <div class="accordion-item border-none">
                        <a class="nav-link accordion-button collapsed" type="button"
                           data-bs-toggle="collapse" data-bs-target="#flush-collapse-4"
                           aria-controls="flush-collapse-2">
                            <ion-icon name="hardware-chip-outline" class="text-gray-500 fs-4 pe-0">
                            </ion-icon>
                            <span class="ps-3">Person Infor</span>
                        </a>
                        <div id="flush-collapse-4" class="accordion-collapse collapse"
                             aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body border-start border-1">
                                <a class="nav-link" href="/admin/employee/index">Employee</a>
                                <a class="nav-link" href="/admin/customer/index">Customer</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item border-none">
                    <div class="accordion-item border-none">
                        <a class="nav-link accordion-button collapsed" type="button"
                           data-bs-toggle="collapse" data-bs-target="#flush-collapse-5"
                           aria-controls="flush-collapse-2">
                            <ion-icon name="hardware-chip-outline" class="text-gray-500 fs-4 pe-0">
                            </ion-icon>
                            <span class="ps-3">3rd Party Infor</span>
                        </a>
                        <div id="flush-collapse-5" class="accordion-collapse collapse"
                             aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body border-start border-1">
                                <a class="nav-link" href="/admin/manufacture/index">Manufacture</a>
                                <a class="nav-link" href="/admin/producer/index">Producer</a>
                            </div>
                        </div>
                    </div>
                </div>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center" href="/admin/myAccount/profile">
                        <ion-icon name="key-outline" class="text-gray-500 fs-4 pe-0"></ion-icon>

                        <span class="ps-3">My Account</span>
                    </a>
                </li>
            </div>
        </ul>
    </nav>
</div>
