<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 8/11/2021
  Time: 7:41 PM
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
          <a class="nav-link active" href="/myAccount/profile">Profile</a>
        </li>
        <li class="nav-item" role="presentation">
          <a class="nav-link" href="/myAccount/billing">Billing</a>
        </li>
        <li class="nav-item" role="presentation">
          <a class="nav-link" href="/myAccount/security">Security</a>
        </li>
        <li class="nav-item" role="presentation">
          <a class="nav-link" href="/myAccount/notification">Notification</a>
        </li>
      </ul>

      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">

          <div class="row py-4">
            <div class="col-xl-4">
              <!-- Profile picture card-->
              <div class="card mb-4 mb-xl-0">
                <div class="card-header fs-5 text-primary">Profile Picture</div>
                <div class="card-body text-center">
                  <!-- Profile picture image-->
                  <img class="img-account-profile rounded-circle mb-2 w-75"
                       src="https://sb-admin-pro.startbootstrap.com/assets/img/illustrations/profiles/profile-1.png"
                       alt="">
                  <!-- Profile picture help block-->
                  <div class="small font-italic text-muted mb-4">JPG or PNG no larger
                    than 5 MB</div>
                  <!-- Profile picture upload button-->
                  <button class="btn btn-primary" type="button">Upload new
                    image</button>
                </div>
              </div>
            </div>
            <div class="col-xl-8">
              <!-- Account details card-->
              <div class="card mb-4">
                <div class="card-header fs-5 text-primary">Account Details</div>
                <div class="card-body">
                  <form>
                    <!-- Form Group (username)-->
                    <div class="mb-3">
                      <label class="mb-1 text-secondary"
                             for="inputUsername">Username (how your name will appear
                        to other users on the site)</label>
                      <input class="form-control px-4 py-3 text-gray-500"
                             id="inputUsername" type="text"
                             placeholder="Enter your username" value="username">
                    </div>
                    <!-- Form Row-->
                    <div class="row gx-3 mb-3">
                      <!-- Form Group (first name)-->
                      <div class="col-md-6">
                        <label class="mb-1 text-secondary"
                               for="inputFirstName">First name</label>
                        <input class="form-control px-4 py-3 text-gray-500"
                               id="inputFirstName" type="text"
                               placeholder="Enter your first name" value="Valerie">
                      </div>
                      <!-- Form Group (last name)-->
                      <div class="col-md-6">
                        <label class="mb-1 text-secondary"
                               for="inputLastName">Last name</label>
                        <input class="form-control px-4 py-3 text-gray-500"
                               id="inputLastName" type="text"
                               placeholder="Enter your last name" value="Luna">
                      </div>
                    </div>
                    <!-- Form Row        -->
                    <div class="row gx-3 mb-3">
                      <!-- Form Group (organization name)-->
                      <div class="col-md-6">
                        <label class="mb-1 text-secondary"
                               for="inputOrgName">Organization name</label>
                        <input class="form-control px-4 py-3 text-gray-500"
                               id="inputOrgName" type="text"
                               placeholder="Enter your organization name"
                               value="Start Bootstrap">
                      </div>
                      <!-- Form Group (location)-->
                      <div class="col-md-6">
                        <label class="mb-1 text-secondary"
                               for="inputLocation">Location</label>
                        <input class="form-control px-4 py-3 text-gray-500"
                               id="inputLocation" type="text"
                               placeholder="Enter your location"
                               value="San Francisco, CA">
                      </div>
                    </div>
                    <!-- Form Group (email address)-->
                    <div class="mb-3">
                      <label class="mb-1 text-secondary"
                             for="inputEmailAddress">Email address</label>
                      <input class="form-control px-4 py-3 text-gray-500"
                             id="inputEmailAddress" type="email"
                             placeholder="Enter your email address"
                             value="name@example.com">
                    </div>
                    <!-- Form Row-->
                    <div class="row gx-3 mb-3">
                      <!-- Form Group (phone number)-->
                      <div class="col-md-6">
                        <label class="mb-1 text-secondary"
                               for="inputPhone">Phone number</label>
                        <input class="form-control px-4 py-3 text-gray-500"
                               id="inputPhone" type="tel"
                               placeholder="Enter your phone number"
                               value="555-123-4567">
                      </div>
                      <!-- Form Group (birthday)-->
                      <div class="col-md-6">
                        <label class="mb-1 text-secondary"
                               for="inputBirthday">Birthday</label>
                        <input class="form-control px-4 py-3 text-gray-500"
                               id="inputBirthday" type="text" name="birthday"
                               placeholder="Enter your birthday"
                               value="06/10/1988">
                      </div>
                    </div>
                    <!-- Save changes button-->
                    <button class="btn btn-primary" type="button">Save
                      changes</button>
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