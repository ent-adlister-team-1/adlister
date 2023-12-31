<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <title>Ads</title>
    <link rel="stylesheet" type="text/css" href="/css/cards.css"/>
    <link rel="stylesheet" type="text/css" href="/css/button.css"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/main-index-navbar.jsp"/>

<div class="container">
    <h1>Here Are all the ads!</h1>
    <form action="SearchServlet" method="post">
        <label>
            <select name="searchTerm">
                <option value="#">Select a category</option>
                <option value="All">All</option>
                <option value="Exotic Pets">Exotic Pets</option>
                <option value="Antique Artifacts">Antique Artifacts</option>
                <option value="Cybersecurity Tools">Cybersecurity Tools</option>
                <option value="Unusual Artwork">Unusual Artwork</option>
                <option value="Forbidden Literature">Forbidden Literature</option>
            </select>
        </label>
        <button>Search</button>
    </form>



    <div class="container card-container">
            <jsp:include page="/WEB-INF/partials/cardPartial.jsp">
                <jsp:param name="ad.title" value="${ad.title}" />
                <jsp:param name="ad.description" value="${ad.description}" />
                <jsp:param name="ad.update" value="ad update"/>
                <jsp:param name="ad.delete" value="ad delete"/>
            </jsp:include>
    </div>
</div>
</body>
</html>