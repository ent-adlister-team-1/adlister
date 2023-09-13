<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"></jsp:include>
    <title>Title</title>

</head>
<body>
<jsp:include page="/WEB-INF/partials/main-index-navbar.jsp"/>

<%--<div action="/logout" method="POST">--%>
<%--    <h1>You've been logged out!</h1>--%>
<%--    <p>maybe a picture here ? tbd</p>--%>
<%--</div>--%>

<%--<div class="container">--%>
<%--    <div class="card">--%>
<%--        <div class="card-body">--%>
<%--            <h1 class="card-title">You've been logged out!</h1>--%>
<%--&lt;%&ndash;            <img src="" >&ndash;%&gt; <!-- maybe an image here-->--%>
<%--            <form action="/" method="GET">--%>
<%--                <button>Home</button>--%>
<%--            </form>--%>
<%--            <form action="/ads" method="GET">--%>
<%--                <button>Ads</button>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<div class="container">
    <div class="row">
        <div class="col">
            <h1>You've been logged out!</h1>
            <img src="/css/img/theguillotine.gif">
        </div>
    </div>
</div>


</body>
</html>
