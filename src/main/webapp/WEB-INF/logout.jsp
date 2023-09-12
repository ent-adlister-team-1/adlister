
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"></jsp:include>
    <title>Title</title>

</head>
<body>
<jsp:include page="/WEB-INF/partials/login-only-navbar.jsp" />

<%--<div action="/logout" method="POST">--%>
<%--    <h1>You've been logged out!</h1>--%>
<%--    <p>maybe a picture here ? tbd</p>--%>
<%--</div>--%>

<div class="container d-flex">
    <div class="card justify-content-center align-items-center">
        <div class="card-body">
            <h1 class="card-title">You've been logged out!</h1>
<%--            <img src="" >--%> <!-- maybe an image here-->
            <a href="/" class="btn btn-primary">Go Back To Home Page(em's button go here)</a>
            <a href="/login" class="btn btn-primary">Go Back To Login Page(em's button go here)</a>
        </div>
    </div>
</div>


</body>
</html>
