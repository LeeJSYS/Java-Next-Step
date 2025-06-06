<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="utf-8">
    <title>SLiPP Java Web Programming</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/styles.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/header.jsp" />

<div class="container" id="main">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading"><h4>Profiles</h4></div>
            <div class="panel-body">
                <div class="well well-sm">
                    <div class="media">
                        <a class="thumbnail pull-left" href="#">
                            <img class="media-object" src="../images/80-text.png" alt="프로필 이미지">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">${sessionScope.user.name}</h4>
                            <p>
                                <a href="#" class="btn btn-xs btn-default">
                                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;${sessionScope.user.email}
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
                <c:if test="${empty sessionScope.user}">
                    <div class="alert alert-danger">로그인이 필요합니다.</div>
                </c:if>
            </div>
        </div>
    </div>
</div>

<!-- script references -->
<script src="../js/jquery-2.2.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/scripts.js"></script>
</body>
</html>
