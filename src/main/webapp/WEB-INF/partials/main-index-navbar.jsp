<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Shadow Trade</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
<%--                        <li style="color: red;">${pageContext.request.requestURI}</li>--%>
            <c:if test="${!(pageContext.request.requestURI eq '/WEB-INF/ads/index.jsp')}">
                <li><a href="/ads">View Ads</a></li>
            </c:if>

            <%--            User IS logged in--%>
            <c:if test="${user != null}">
                <c:if test="${!(pageContext.request.requestURI eq '/WEB-INF/ads/create.jsp')}">
                    <li><a href="/ads/create">Create Ad</a></li>
                </c:if>

                <c:if test="${!(pageContext.request.requestURI eq '/WEB-INF/profile.jsp')}">
                    <li><a href="/profile">Profile</a></li>
                </c:if>
                <li><a href="/logout">Logout</a></li>
            </c:if>

            <%--            User is NOT logged in--%>
            <c:if test="${user == null}">
                <c:if test="${!(pageContext.request.requestURI eq '/WEB-INF/login.jsp') && !(pageContext.request.requestURI eq '/WEB-INF/register.jsp') && !(pageContext.request.requestURI eq '/')}">
                    <li><a href="/login">Login or Join</a></li>
                </c:if>
            </c:if>


        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>