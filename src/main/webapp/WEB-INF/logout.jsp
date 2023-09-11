<%--
  Created by IntelliJ IDEA.
  User: samantharamos
  Date: 9/7/23
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"></jsp:include>
    <title>Title</title>
</head>
<body>
<%--<jsp:include page="/WEB-INF/partials/navbar.jsp"/>--%>
<jsp:include page="/WEB-INF/partials/login-only-navbar.jsp" />

<%--<form action="/logout" method="POST">--%>

<%--</form>--%>

<div action="/logout" method="POST">
    <h1>You've been logged out!</h1>
</div>


</body>
</html>
