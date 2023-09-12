<%-- cardPartial.jsp --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card">
    <div class="card-body" style="width: 18rem">
        <c:forEach var="ad" items="${ads}">
            <h5 class="card-title">${ad.title}</h5>
            <p class="card-text">${ad.description}</p>
            <c:if test="${user != null}">
                <a href="/ads/update" class="btn">Update</a>
                <a href="/ads/delete" class="btn">Delete</a>
            </c:if>

        </c:forEach>

<div class="row row-cols-3">
<div class="col">

    <div class="card">
        <div class="card-body" style="width: 20rem">
            <c:forEach var="ad" items="${ads}">
                <a href="ads/details?id=${ad.id}"><h5>${ad.title}</h5></a>
                <p class="card-text">${ad.description}</p>
                <a href="ads/update?id=${ad.id}">
                    <button>Update</button>
                </a>
                <form action="ads/delete?id=${ad.id}" method="POST">
                    <button>Delete</button>
                </form>
            </c:forEach>
        </div>
    </div>
</div>
</div>
