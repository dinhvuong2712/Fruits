<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 6/16/2021
  Time: 7:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<c:url value="/resources/css/admin/styles.css"/> ">
    <!-- Bootstrap CSS v5.0.2 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <script type="text/javascript" src="<c:url value="/resources/js/common/common.js" /> "></script>
    <script type="text/javascript" src="<c:url value="/resources/js/twbsPagination/jquery.twbsPagination.js"/> "></script>
</head>

<body>
<div class="wrapper position-relative overflow-hidden">

    <%--  top bar  --%>
    
    <jsp:include page="/common/admin/top_bar.jsp" />
    
    <%--  end top bar  --%>
    
    
    <main class="d-flex flex-column">

        <%--    side bar    --%>

        <jsp:include page="/common/admin/side_bar.jsp" />

        <%--    end side bar    --%>
        <div class="content p-4 bg-light">

        <%--            body--%>
                    <dec:body/>
        <%--                end body--%>

        </div>

        <%--    footer    --%>

        <jsp:include page="/common/admin/footer.jsp" />

        <%--    end footer    --%>
    </main>
</div>

<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3/dist/chart.min.js"></script>
<script type="text/javascript" src="<c:url value="/resources/js/admin/chart-line.js"/> " ></script>
<script type="text/javascript" src="<c:url value="/resources/js/admin/chart-doughnut.js"/> "></script>
<script type="text/javascript" src="<c:url value="/resources/js/admin/toggle.js" /> "></script>

</body>

</html>