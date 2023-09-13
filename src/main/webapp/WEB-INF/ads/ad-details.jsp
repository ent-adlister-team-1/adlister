
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Details" />
    </jsp:include>
    <link rel="stylesheet" href="/css/ad-details.css">
    <link rel="stylesheet" href="/css/navabar.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/main-index-navbar.jsp"/>

<div class="add-container">
    <div class="title">${ad.title}</div>
    <div class="description">Description: ${ad.description}</div>
    <c:if test="${ad.price == 0}">
        <div class="price">Price: Free</div>
    </c:if>
    <c:if test="${ad.price != 0}">
        <div class="price">Price: $<fmt:formatNumber type="number" value="${ad.price}" pattern="#,##0.00" /></div>
    </c:if>
    <div class="location">Location: ${ad.location}</div>
    <div class="contact">Contact: ${ad.contact}</div>
</div>

</body>
</html>
