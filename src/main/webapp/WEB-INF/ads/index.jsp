<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>
    <form action="SearchServlet" method="post">
    <select name="searchTerm">
        <option value="#"></option>
        <option value="All">All</option>
        <option value="Exotic Pets">Exotic Pets</option>
        <option value="Antique Artifacts">Antique Artifacts</option>
        <option value="Cybersecurity Tools">Cybersecurity Tools</option>
        <option value="Unusual Artwork">Unusual Artwork</option>
        <option value="Forbidden Literature">Forbidden Literature</option>
    </select>
    <input type="submit" value="Search">
</form>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
