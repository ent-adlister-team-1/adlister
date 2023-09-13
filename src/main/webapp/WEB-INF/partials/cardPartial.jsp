<%-- cardPartial.jsp --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
        <div class="cards" class="row">
            <c:forEach var="ad" items="${ads}">
                <div class="col-lg-4">
                    <div class="card">
                        <h5>${ad.title}</h5>
                        <a class="ad_details" href="ads/details?id=${ad.id}">Show details</a>
                        <c:if test="${user != null}">
                            <a href="ads/update?id=${ad.id}">
                                <button>Update</button>
                            </a>
                            <form action="ads/delete?id=${ad.id}" method="POST">
                                <button>Delete</button>
                            </form>
                        </c:if>
                    </div>
                </div>
            </c:forEach>
        </div>
</div>





