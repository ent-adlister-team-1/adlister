<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Ad"/>
    </jsp:include>
    <title>

    </title>
    <link rel="stylesheet" type="text/css" href="/css/update-form.css"/>
    <link rel="stylesheet" type="text/css" href="/css/button.css"/>
</head>
<body>
<div class="container">
    <div class="update-form">

        <jsp:include page="/WEB-INF/partials/main-index-navbar.jsp"/>
        <%--<c: var="ad" items="${ad}">--%>
        <form action="/ads/update?id=${ad.id}" method="POST" class="form-control">
            <%--    <label for = "category">Category</label>--%>
            <%--    <input type="text" id = "category" name = "category" value = "category" placeholder = "${ad.category}">--%>
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" value="${ad.title}">
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" value="${ad.price}">
            <label for="description">Description:</label>
            <input type="text" id="description" name="description" value="${ad.description}">
            <label for="contact">Contact:</label>
            <input type="text" id="contact" name="contact" value="${ad.contact}">
            <label for="location">Location:</label>
            <input type="text" id="location" name="location" value="${ad.location}">
            <button><input type="submit"></button>
        </form>
        <%--</c:>--%>

    </div>
</div>
</body>
</html>
