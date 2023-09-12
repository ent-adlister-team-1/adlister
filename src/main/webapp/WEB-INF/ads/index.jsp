<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Here Are all the ads!</h1>
    <form action="SearchServlet" method="post">
        <label>
            <select name="searchTerm">
                <option value="#"></option>
                <option value="All">All</option>
                <option value="Exotic Pets">Exotic Pets</option>
                <option value="Antique Artifacts">Antique Artifacts</option>
                <option value="Cybersecurity Tools">Cybersecurity Tools</option>
                <option value="Unusual Artwork">Unusual Artwork</option>
                <option value="Forbidden Literature">Forbidden Literature</option>
            </select>
        </label>
        <input type="submit" value="Search">
    </form>

<%--    <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="col-md-6">--%>
<%--            <a href="ads/details?id=${ad.id}">${ad.title}</a>--%>
<%--&lt;%&ndash;            <p>${ad.description}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <div>&ndash;%&gt;--%>
<%--                <form action="ads/delete?id=${ad.id}" method="POST">--%>
<%--                    <button>Delete</button>--%>
<%--                </form>--%>
<%--                <a href="ads/update?id=${ad.id}"><button>Update</button></a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>

    <div class="card-container">
        <c:forEach var="card" items="${ads}">
            <jsp:include page="/WEB-INF/partials/cardPartial.jsp">
                <jsp:param name="ad.title" value="${ad.title}" />
                <jsp:param name="ad.description" value="${ad.description}" />
                <jsp:param name="ad.update" value="ad update"/>
                <jsp:param name="ad.delete" value="ad delete"/>
            </jsp:include>
        </c:forEach>
    </div>
</div>

</body>
</html>