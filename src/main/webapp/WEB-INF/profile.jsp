<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<%--    <jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
    <jsp:include page="/WEB-INF/partials/logout-only-navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <div id="user-info">
            <div class="card">
            <aside>Username: ${sessionScope.user.username}</aside>
            <aside>Email: ${sessionScope.user.email}</aside>
            </div>
        </div>
        <br>
        <div id="user-ads">
            <h3>Your Ads:</h3>
            <div>

            </div>
        </div>
        <br>
        <div>
            <a href="ads/create"><button>Create an ad</button></a>
        </div>
    </div>

</body>
</html>
