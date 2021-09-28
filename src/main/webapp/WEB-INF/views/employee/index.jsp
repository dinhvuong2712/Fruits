<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 7/21/2021
  Time: 8:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
    <jsp:include page="/common/admin/index/header.jsp">
        <jsp:param name="text" value="Danh sách nhân viên"/>
    </jsp:include>
    <div class="dataTable-wrapper shadow-sm p-3 mb-5 bg-white rounded">
        <tr class="dataTable-container">
            <jsp:include page="/common/admin/index/addAndFind.jsp"/>
            <table id="employee-all" class="table table-sm table-hover table-striped">
                <thead>
                <tr>
                    <th>#&nbsp;Id</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>PhoneNumber</th>
                    <th>Status</th>
                    <th colspan="3" class="text-center">Control</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                <c:when test="${pageCount > 0}">
                <c:forEach var="item" items="${items}">
                    <tr>
                        <td><span class="user-select-none">#&nbsp;</span>${item.id_emp}</td>
                        <td>${item.firstName} ${item.lastName}</td>
                        <td class="gender">${item.gender}</td>
                        <td><span>0</span>${item.phoneNumber}</td>
                        <td <c:choose>
                            <c:when test="${item.status == true}">
                                class="text-success">Enabled
                            </c:when>
                            <c:otherwise>
                                class="text-light">Deny
                            </c:otherwise>
                        </c:choose></td>
                        <jsp:include page="/common/admin/index/objFunc.jsp">
                            <jsp:param name="id" value="${item.id_emp}"/>
                        </jsp:include>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <jsp:include page="/common/admin/index/pagination.jsp">
                <jsp:param name="pageCount" value="${pageCount}"/>
            </jsp:include>

            <script src="<c:url value="/resources/js/employee/index.js"/>"></script>
            <script src="<c:url value="/resources/js/common/objFunc.js"/>"></script>
            </c:when>
            <c:otherwise>
        <tr>
            <td colspan="9" class="text-warning text-center fs-4 p-4">Item not found!</td>
        </tr>
        </tbody>
        </table>
        </c:otherwise>
        </c:choose>
    </div>
</div>
</div>