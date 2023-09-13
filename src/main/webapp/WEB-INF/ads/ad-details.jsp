
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ad Details</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/main-index-navbar.jsp"/>

<div class="add-container">
    <div class="title">${ad.title}</div>
    <div class="description">${ad.description}</div>
    <div class="price">${ad.price}</div>
    <div class="location">${ad.location}</div>
    <div class="contact">${ad.contact}</div>
</div>

</body>
</html>
