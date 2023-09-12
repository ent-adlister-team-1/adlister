<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Update Ad" />
  </jsp:include>
</head>
<body>

<form action = "/ads/update_user?id=${user.username}" method = "POST" class = "form-control">

  <label for = "email">Please Enter New Email:</label>
  <input type="text" id = "email" name = "email" value = "${user.email}">
  <input type = "submit">
</form>


</body>
</html>
