<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Update Ad" />
  </jsp:include>
  <title>Update User</title>
  <link rel="stylesheet" type="text/css" href="/css/update-form.css"/>
  <link rel="stylesheet" type="text/css" href="/css/button.css"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/main-index-navbar.jsp"/>
<div class="container">
  <div class="update-form">


<form action = "/ads/update_user?id=${user.username}" method = "POST" class = "form-control">

  <label for = "email">Please Enter New Email:</label>
  <input type="text" id = "email" name = "email" value = "${user.email}">
  <button><input type = "submit"></button>
</form>

</div>
</div>
</body>
</html>
