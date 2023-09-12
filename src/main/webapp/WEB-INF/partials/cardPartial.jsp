<%-- cardPartial.jsp --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card">
    <div class="card-body" style="width: 18rem">
        <c:forEach var="ad" items="${ads}">
            <h5 class="card-title">${ad.title}</h5>
            <p class="card-text">${ad.description}</p>
            <a href="/ads/update" class="btn">Update</a>
            <a href="/ads/delete" class="btn">Delete</a>
        </c:forEach>

    </div>
</div>
