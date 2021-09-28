<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 8/11/2021
  Time: 8:26 PM
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
                    <a class="nav-link active" href="/myAccount/security">Security</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" href="/myAccount/notification">Notification</a>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="security" role="tabpanel" aria-labelledby="security-tab">
                    <div class="row py-4">
                        <div class="col-lg-8">
                            <!-- Change password card-->
                            <div class="card mb-4">
                                <div class="card-header">Change Password</div>
                                <div class="card-body">
                                    <form>
                                        <!-- Form Group (current password)-->
                                        <div class="mb-3">
                                            <label class="small mb-1" for="currentPassword">Current
                                                Password</label>
                                            <input class="form-control" id="currentPassword"
                                                   type="password" placeholder="Enter current password">
                                        </div>
                                        <!-- Form Group (new password)-->
                                        <div class="mb-3">
                                            <label class="small mb-1" for="newPassword">New
                                                Password</label>
                                            <input class="form-control" id="newPassword" type="password"
                                                   placeholder="Enter new password">
                                        </div>
                                        <!-- Form Group (confirm password)-->
                                        <div class="mb-3">
                                            <label class="small mb-1" for="confirmPassword">Confirm
                                                Password</label>
                                            <input class="form-control" id="confirmPassword"
                                                   type="password" placeholder="Confirm new password">
                                        </div>
                                        <button class="btn btn-primary" type="button">Save</button>
                                    </form>
                                </div>
                            </div>
                            <!-- Security preferences card-->
                            <div class="card mb-4">
                                <div class="card-header">Security Preferences</div>
                                <div class="card-body">
                                    <!-- Account privacy optinos-->
                                    <h5 class="mb-1">Account Privacy</h5>
                                    <p class="small text-muted">By setting your account to private, your
                                        profile information and posts will not be visible to users
                                        outside of your user groups.</p>
                                    <form>
                                        <div class="form-check">
                                            <input class="form-check-input" id="radioPrivacy1"
                                                   type="radio" name="radioPrivacy" checked="">
                                            <label class="form-check-label" for="radioPrivacy1">Public
                                                (posts are available to all users)</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" id="radioPrivacy2"
                                                   type="radio" name="radioPrivacy">
                                            <label class="form-check-label" for="radioPrivacy2">Private
                                                (posts are available to only users in your
                                                groups)</label>
                                        </div>
                                    </form>
                                    <hr class="my-4">
                                    <!-- Data sharing options-->
                                    <h5 class="mb-1">Data Sharing</h5>
                                    <p class="small text-muted">Sharing usage data can help us to
                                        improve our products and better serve our users as they
                                        navigation through our application. When you agree to share
                                        usage data with us, crash reports and usage analytics will be
                                        automatically sent to our development team for investigation.
                                    </p>
                                    <form>
                                        <div class="form-check">
                                            <input class="form-check-input" id="radioUsage1"
                                                   type="radio" name="radioUsage" checked="">
                                            <label class="form-check-label" for="radioUsage1">Yes, share
                                                data and crash reports with app developers</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" id="radioUsage2"
                                                   type="radio" name="radioUsage">
                                            <label class="form-check-label" for="radioUsage2">No, limit
                                                my data sharing with app developers</label>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <!-- Two factor authentication card-->
                            <div class="card mb-4">
                                <div class="card-header">Two-Factor Authentication</div>
                                <div class="card-body">
                                    <p>Add another level of security to your account by enabling
                                        two-factor authentication. We will send you a text message to
                                        verify your login attempts on unrecognized devices and browsers.
                                    </p>
                                    <form>
                                        <div class="form-check">
                                            <input class="form-check-input" id="twoFactorOn"
                                                   type="radio" name="twoFactor" checked="">
                                            <label class="form-check-label" for="twoFactorOn">On</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" id="twoFactorOff"
                                                   type="radio" name="twoFactor">
                                            <label class="form-check-label"
                                                   for="twoFactorOff">Off</label>
                                        </div>
                                        <div class="mt-3">
                                            <label class="small mb-1" for="twoFactorSMS">SMS
                                                Number</label>
                                            <input class="form-control" id="twoFactorSMS" type="tel"
                                                   placeholder="Enter a phone number" value="555-123-4567">
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- Delete account card-->
                            <div class="card mb-4">
                                <div class="card-header">Delete Account</div>
                                <div class="card-body">
                                    <p>Deleting your account is a permanent action and cannot be undone.
                                        If you are sure you want to delete your account, select the
                                        button below.</p>
                                    <button class="btn btn-danger-soft text-danger" type="button">I
                                        understand, delete my account</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


