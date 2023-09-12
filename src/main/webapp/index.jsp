<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/landing.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/main-index-navbar.jsp"/>
<div class="content">
    <div class="row">
        <div class="col">
            <h1>Shadow Trade</h1>
            <h2>Unmasking the Dark Side of Deals</h2>
            <div class="row">
                <div class="col enter-btn">
                    <form action="/login" method="GET">
                    <button> SIGN IN</button>
                    </form>
                    <form action="/register" method="GET">
                    <button> JOIN</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>



