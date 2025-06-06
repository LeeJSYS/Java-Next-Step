<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>개인정보 수정</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/styles.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/header.jsp" />

<div class="container" id="main">
   <div class="col-md-6 col-md-offset-3">
      <div class="panel panel-default content-main">
          <form name="update" method="post" action="/user/update">
              <!-- userId는 hidden 필드로 전달 -->
              <input type="hidden" name="userId" value="${user.userId}" />

              <div class="form-group">
                  <label>사용자 아이디</label>
                  <input type="text" class="form-control" value="${user.userId}" readonly />
              </div>

              <div class="form-group">
                  <label for="password">비밀번호</label>
                  <input type="password" class="form-control" id="password" name="password" placeholder="Password">
              </div>

              <div class="form-group">
                  <label for="name">이름</label>
                  <input type="text" class="form-control" id="name" name="name" value="${user.name}" />
              </div>

              <div class="form-group">
                  <label for="email">이메일</label>
                  <input type="email" class="form-control" id="email" name="email" value="${user.email}" />
              </div>

              <button type="submit" class="btn btn-primary pull-right">수정 완료</button>
              <div class="clearfix"></div>
          </form>
      </div>
   </div>
</div>

<!-- script references -->
<script src="../js/jquery-2.2.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/scripts.js"></script>
</body>
</html>
