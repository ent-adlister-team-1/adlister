<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Ad"/>
    </jsp:include>
    <title>Update Ad</title>
    <link rel="stylesheet" type="text/css" href="/css/update.css"/>
    <link rel="stylesheet" type="text/css" href="/css/button.css"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/main-index-navbar.jsp"/>
<%--<c: var="ad" items="${ad}">--%>

<div class="container">
    <div class="update-form">

        <form action="/ads/update?id=${ad.id}" method="POST" class="form-control">
            <%--    <label for = "category">Category</label>--%>
            <%--    <input type="text" id = "category" name = "category" value = "category" placeholder = "${ad.category}">--%>
            <div class = user-box>
                <label for="title"></label>
<%--                <input type="text" id="title" name="title" value="${ad.title}">--%>
                <input type="text" id="title" name="title" value="Title" placeholder="Title">
            </div>
                <div class = user-box>
                <label for="price"></label>
<%--                <input type="text" id="price" name="price" value="${ad.price}">--%>
                <input type="text" id="price" name="price" value="" placeholder="Price">
            </div>
                <div class = user-box>
                <label for="description"></label>
<%--                <input type="text" id="description" name="description" value="${ad.description}">--%>
                <input type="text" id="description" name="description" value=""placeholder="Description">
            </div>
                <div class = user-box>
                <label for="contact"></label>
<%--                <input type="text" id="contact" name="contact" value="${ad.contact}">--%>
                <input type="text" id="contact" name="contact" value="" placeholder="Contact">
            </div>
                <div class = user-box>
                <label for="location"></label>
<%--                <input type="text" id="location" name="location" value="${ad.location}">--%>
                <input type="text" id="location" name="location" value="" placeholder="Location">
            </div>
            <div class="button"><a href="/profile">


                <input type="submit"></a>
            </div>
        </form>


</div>
</body>
</html>
