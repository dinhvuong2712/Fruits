<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 8/11/2021
  Time: 8:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="title py-2 px-4 bg-white border-bottom-1 d-flex align-items-center">
    <ion-icon name="person-sharp" class="fs-5 text-gray-500"></ion-icon>
    <h3 class="text-secondary m-0 px-2">Account</h3>
</div>
<div class="container-fluid p-4">
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs w-100" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link" href="/myAccount/profile">Profile</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" href="/myAccount/billing">Billing</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" href="/myAccount/security">Security</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" href="/myAccount/notification">Notification</a>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="notification" role="tabpanel" aria-labelledby="notification-tab">
                    <div class="row py-4">
                        <div class="col-lg-8">
                            <!-- Email notifications preferences card-->
                            <div class="card card-header-actions mb-4">
                                <div class="card-header d-flex justify-content-between">
                                    Email Notifications
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" id="flexSwitchCheckChecked" type="checkbox" checked="">
                                        <label class="form-check-label" for="flexSwitchCheckChecked"></label>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <!-- Form Group (default email)-->
                                        <div class="mb-3">
                                            <label class="small mb-1" for="inputNotificationEmail">Default notification email</label>
                                            <input class="form-control" id="inputNotificationEmail" type="email"
                                                   value="name@example.com" disabled="">
                                        </div>
                                        <!-- Form Group (email updates checkboxes)-->
                                        <div class="mb-0">
                                            <label class="small mb-2">Choose which types of email updates you receive</label>
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkAccountChanges" type="checkbox" checked="">
                                                <label class="form-check-label" for="checkAccountChanges">Changes made to your
                                                    account</label>
                                            </div>
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkAccountGroups" type="checkbox" checked="">
                                                <label class="form-check-label" for="checkAccountGroups">Changes are made to groups
                                                    you're part of</label>
                                            </div>
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkProductUpdates" type="checkbox" checked="">
                                                <label class="form-check-label" for="checkProductUpdates">Product updates for products
                                                    you've purchased or starred</label>
                                            </div>
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkProductNew" type="checkbox" checked="">
                                                <label class="form-check-label" for="checkProductNew">Information on new products and
                                                    services</label>
                                            </div>
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkPromotional" type="checkbox">
                                                <label class="form-check-label" for="checkPromotional">Marketing and promotional
                                                    offers</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" id="checkSecurity" type="checkbox" checked=""
                                                       disabled="">
                                                <label class="form-check-label" for="checkSecurity">Security alerts</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- SMS push notifications card-->
                            <div class="card card-header-actions mb-4">
                                <div class="card-header d-flex justify-content-between">
                                    Push Notifications
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" id="smsToggleSwitch" type="checkbox" checked="">
                                        <label class="form-check-label" for="smsToggleSwitch"></label>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <!-- Form Group (default SMS number)-->
                                        <div class="mb-3">
                                            <label class="small mb-1" for="inputNotificationSms">Default SMS number</label>
                                            <input class="form-control" id="inputNotificationSms" type="tel" value="123-456-7890"
                                                   disabled="">
                                        </div>
                                        <!-- Form Group (SMS updates checkboxes)-->
                                        <div class="mb-0">
                                            <label class="small mb-2">Choose which types of push notifications you receive</label>
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkSmsComment" type="checkbox" checked="">
                                                <label class="form-check-label" for="checkSmsComment">Someone comments on your
                                                    post</label>
                                            </div>
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkSmsShare" type="checkbox">
                                                <label class="form-check-label" for="checkSmsShare">Someone shares your post</label>
                                            </div>
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkSmsFollow" type="checkbox" checked="">
                                                <label class="form-check-label" for="checkSmsFollow">A user follows your account</label>
                                            </div>
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkSmsGroup" type="checkbox">
                                                <label class="form-check-label" for="checkSmsGroup">New posts are made in groups you're
                                                    part of</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" id="checkSmsPrivateMessage" type="checkbox" checked="">
                                                <label class="form-check-label" for="checkSmsPrivateMessage">You receive a private
                                                    message</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <!-- Notifications preferences card-->
                            <div class="card">
                                <div class="card-header">Notification Preferences</div>
                                <div class="card-body">
                                    <form>
                                        <!-- Form Group (notification preference checkboxes)-->
                                        <div class="form-check mb-2">
                                            <input class="form-check-input" id="checkAutoGroup" type="checkbox" checked="">
                                            <label class="form-check-label" for="checkAutoGroup">Automatically subscribe to group
                                                notifications</label>
                                        </div>
                                        <div class="form-check mb-3">
                                            <input class="form-check-input" id="checkAutoProduct" type="checkbox">
                                            <label class="form-check-label" for="checkAutoProduct">Automatically subscribe to new
                                                product notifications</label>
                                        </div>
                                        <!-- Submit button-->
                                        <button class="btn btn-danger-soft text-danger">Unsubscribe from all notifications</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</html>
