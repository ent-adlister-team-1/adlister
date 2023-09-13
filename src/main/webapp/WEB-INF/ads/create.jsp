<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <link rel="stylesheet" href="../../css/navabar.css">
    <link rel="stylesheet" href="../../css/button.css">
    <link rel="stylesheet" type="text/css" href="/css/update-form.css"/>



</head>
<body>
<jsp:include page="/WEB-INF/partials/main-index-navbar.jsp" />
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <c:if test="${sessionScope.userTitleEmpty}">
                    <p class = "error">Title cannot be empty. Please enter a title.</p>
                </c:if>
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <c:if test="${sessionScope.userDescEmpty}">
                    <p class = "error">Description cannot be blank. Please describe what you have listed.</p>
                </c:if>
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="category">Pick a category:</label>
                <select name="category_id" id="category">
                    <option value="1">Exotic Pets</option>
                    <option value="2">Antique Artifacts</option>
                    <option value="3">Cybersecurity Tools</option>
                    <option value="4">Unusual Artwork</option>
                    <option value="5">Forbidden Literature</option>
                </select>
            </div>
            <div class="form-group">
                <c:if test="${sessionScope.userLocEmpty}">
                    <p class = "error">Location cannot be blank. Please enter a location.</p>
                </c:if>
                <label for="location">Location</label>
                <input id="location" name="location" class="form-control" type="text">
            </div>
            <div class="form-group">
                <c:if test="${sessionScope.userContactEmpty}">
                    <p class = "error">Contact cannot be blank. Please enter a contact.</p>
                </c:if>
                <label for="contact">Contact</label>
                <input id="contact" name="contact" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input id="price" name="price" class="form-control" type="text">
            </div>
           <button> <input type="submit"></button>
        </form>
    </div>
</body>
</html>
