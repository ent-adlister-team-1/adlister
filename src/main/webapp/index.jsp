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
    <!-- Your other head elements go here -->
    <style>
        body {
            background-image: url('img/stained glass.webp');
            background-size: cover;
            background-repeat: no-repeat;
            /*background-attachment: fixed;*/
        }

        .content {
            text-align: center; /* Center the content horizontally */
            padding: 100px; /* Add some padding for spacing */
            color: white; /* Text color to make it visible on the image */
        }

        h1{
            font-family: 'Pirata One', cursive;
            color: #eeebe2;
            font-size: 12em;
        }

        h2{
            font-family: 'Playfair Display', serif;
            color: #eeebe2;
            font-size: 3em;
        }

        .navbar-default {
             background-color: rgba(248, 248, 248, 0);
             border-color: rgba(231, 231, 231, 0);
        }

        .navbar-default .navbar-nav>li>a {

            color: #eeebe2;
            font-size: 15px;
        }

    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/login-only-navbar.jsp"/>
<div class="content">
    <div class="row">
        <div class="col">
            <h1>Shadow Trade</h1>
            <h2>Unmasking the Dark Side of Deals</h2>
        </div>
    </div>
</div>
</body>
</html>



