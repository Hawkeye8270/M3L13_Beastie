<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
    <title>Users</title>
</head>
<body>

<%--1--%>
<%--${requestScope.users}--%>
<%--<br>--%>

<%--2--%>
<c:forEach var="user" items="${requestScope.users}">

<%--    ${user.login} <br>--%>

    Edit user: <a href="user-servlet?id=${user.id}">${user.login}</a> <br>

</c:forEach>

</body>
</html>
