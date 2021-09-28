<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 7/21/2021
  Time: 8:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row justify-content-center">
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-10">
        <div class="card shadow-lg border-0 rounded-lg mt-5">
            <div class="card-header"><h3 class="text-center font-weight-light my-4">Update Account</h3></div>
            <div class="card-body">
                <form id="target" method="post" action="/admin/employee/editConfirmed">
                    <input type="hidden" name="Id_emp" value="${item.id_emp}">
                    <div class="form-group mb-3 row">
                        <div class="col-md-6">
                            <label class="small mb-1" for="FirstName">First Name</label>
                            <input class="form-control py-2" name="FirstName" value="${item.firstName}" id="FirstName" type="text"
                                   aria-describedby="nameHelp" placeholder="Enter first name">
                        </div>
                        <div class="col-md-6">
                            <label class="small mb-1" for="LastName">Last Name</label>
                            <input class="form-control py-2" name="LastName" value="${item.lastName}" id="LastName" type="text"
                                   aria-describedby="nameHelp" placeholder="Enter first name">
                        </div>
                    </div>
                    <div class="form-group mb-3 row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="small mb-1" for="Birth">Birth</label>
                                <input class="form-control py-2" name="Birth" value="${item.birth}"
                                       id="Birth" type="date" aria-describedby="dateHelp" placeholder="dd/MM/yyyy">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-check-label small">
                                    Gender
                                </label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="Gender"
                                           data-gender="${item.gender}" value="true"
                                           id="flexRadioDefault1">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Male
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="Gender" value="false"
                                           id="flexRadioDefault2">
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Female
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label class="small mb-1" for="Address">Address</label>
                        <input class="form-control py-2" name="Address" value="${item.address}" id="Address" type="text"
                               aria-describedby="emailHelp" placeholder="Enter your address">
                    </div>
                    <div class="form-group mb-3">
                        <label class="small mb-1" for="PhoneNumber">Phone Number</label>
                        <input class="form-control py-2" name="PhoneNumber" value="${item.phoneNumber}" id="PhoneNumber"
                               type="text" aria-describedby="emailHelp" placeholder="Enter your phone">
                    </div>
                    <div class="form-group d-flex justify-content-between mt-4 mb-0">
                        <div class="d-flex align-items-center">
                            <label class="form-check-label small me-2">
                                Status
                            </label>
                            <div class="form-check form-switch mb-0">
                                <input class="form-check-input py-2" name="Status" value="" id="Status" type="checkbox"
                                <c:choose>
                                <c:when test="${item.status == true}">
                                       checked>
                                </c:when>
                                </c:choose>
                            </div>
                        </div>
                        <button type="submit" id="updateConfirm" class="btn btn-primary btn-block">Update Account
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="<c:url value="/resources/js/employee/editConfirmed.js"/>"></script>

