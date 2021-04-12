<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <!-- 必须的 meta 标签 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap 的 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Title</title>
    <!-- 选项 2：Popper 和 Bootstrap 的 JS 插件各自独立 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-gRC4eoaRyQ8xv2X6Mnf+eOIrtON3wId3dAkwO0HQX26OrFBoLpjX/XWOJacSiZhL" crossorigin="anonymous"></script>
</head>
<body>
<table class="table table-bordered table-striped table-dark" >
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>password</th>
        <th>registTime</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.data.list}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.password}</td>
            <td>
                <fmt:formatDate value="${user.registTime}" pattern="yyyy-MM-dd"></fmt:formatDate>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<nav aria-label="...">
    <ul class="pagination justify-content-center">

        <c:if test="${requestScope.data.hasPreviousPage}">
            <li class="page-item">
                <a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${requestScope.data.prePage}" tabindex="-1" aria-disabled="true">Previous</a>
            </li>
        </c:if>
        <c:if test="${!requestScope.data.hasPreviousPage}">
            <li class="page-item disabled">
                <a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${requestScope.data.prePage}" tabindex="-1" aria-disabled="true">Previous</a>
            </li>
        </c:if>

        <c:forEach begin="1" end="${requestScope.data.pages}" var="pageNum">
            <c:if test="${pageNum==requestScope.data.pageNum}">
                <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${pageNum}">${pageNum}</a></li>
            </c:if>
            <c:if test="${pageNum!=requestScope.data.pageNum}">
                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${pageNum}">${pageNum}</a></li>
            </c:if>
        </c:forEach>

        <c:if test="${requestScope.data.hasNextPage}">
            <li class="page-item">
                <a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${requestScope.data.nextPage}">Next</a>
            </li>
        </c:if>
        <c:if test="${!requestScope.data.hasNextPage}">
            <li class="page-item disabled">
                <a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${requestScope.data.nextPage}">Next</a>
            </li>
        </c:if>

    </ul>
</nav>
</body>
</html>