<%--
  Created by IntelliJ IDEA.
  User: Dang Dinh Vuong
  Date: 9/2/2021
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<td class="text-nowrap" style="width:1px;">
  <a class="btn btn-sm btn-warning mr-1" href="edit?id=${param.id}">Sửa</a>
  <a class="btn btn-sm btn-info mr-1" href="details?id=${param.id}">Chi tiết</a>
  <button class="btn btn-sm btn-danger" data-href="delete?id=${param.id}">Xóa</button>
</td>
