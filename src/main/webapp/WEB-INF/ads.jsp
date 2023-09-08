<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Advertisements</title> <!-- Set your title here -->
</head>
<body>
<h1>Advertisements</h1>

<!-- Your existing code for rendering ads -->
<ul>
  <c:forEach var="ad" items="${ads}">
    <li>
      <a href="ad-details.jsp?id=${ad.id}">${ad.title}</a>
    </li>
  </c:forEach>
</ul>
</body>
</html>
