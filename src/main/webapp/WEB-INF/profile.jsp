<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <title>Profile</title>
    <link rel="stylesheet" type="text/css" href="/css/cards.css"/>
</head>
<body>
<%--    <jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
<%--    <jsp:include page="/WEB-INF/partials/logout-only-navbar.jsp" />--%>
<jsp:include page="/WEB-INF/partials/main-index-navbar.jsp"/>

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <div id="user-info">
            <aside>Username: ${sessionScope.user.username}</aside>
            <aside>Email: ${sessionScope.user.email}</aside>
            <form action="ads/update_user?id=${sessionScope.user.username}" method="GET">
                <button>Update User Info</button>
            </form>
        </div>
        <br>
        <div id="user-ads">
            <div>
            <a href="ads/create"><button>Create an ad</button></a>
        </div>
            <h3>Your Ads:</h3>
            <div class="container">
                <jsp:include page="/WEB-INF/partials/cardPartial.jsp">
                    <jsp:param name="ad.title" value="${ad.title}" />
                    <jsp:param name="ad.description" value="${ad.description}" />
                    <jsp:param name="ad.update" value="ad update"/>
                    <jsp:param name="ad.delete" value="ad delete"/>
                </jsp:include>
            </div>
        </div>
        <br>
    </div>

</body>
</html>
