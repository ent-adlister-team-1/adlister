<%-- cardPartial.jsp --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="cards">
    <div class="card-body" style="width: 20rem">
        <c:forEach var="ad" items="${ads}">
            <div class="card">


                <a href="ads/details?id=${ad.id}"><h5>${ad.title}</h5></a>
                <p class="card-text">${ad.description}</p>
                <c:if test = "${user != null}">
                <a href="ads/update?id=${ad.id}">
                    <button>Update</button>
                </a>
                <form action="ads/delete?id=${ad.id}" method="POST">
                    <button>Delete</button>
                </form>
                </c:if>
            </div>
        </c:forEach>
    </div>
</div>
