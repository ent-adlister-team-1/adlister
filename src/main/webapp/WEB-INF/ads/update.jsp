<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<c: var="ad" items="${ad}">--%>
<form action = "ads/update" method = "POST">
<%--    <label for = "category">Category</label>--%>
<%--    <input type="text" id = "category" name = "category" value = "category" placeholder = "${ad.category}">--%>
    <label for = "title"></label>
    <input type="text" id = "title" name = "title" value = "title" placeholder = "${ad.title}">
    <label for = "price"></label>
    <input type="text" id = "price" name = "price" value = "price" placeholder = "${ad.price}">
    <label for = "description"></label>
    <input type="text" id = "description" name = "description" value = "description" placeholder = "${ad.description}">
    <label for = "contact"></label>
    <input type="text" id = "contact" name = "contact" value = "contact" placeholder = "${ad.contact}">
    <label for = "location"></label>
    <input type="text" id = "location" name = "location" value = "location" placeholder = "${ad.location}">
</form>
<%--</c:>--%>

</body>
</html>
