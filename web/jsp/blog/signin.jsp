<%@ page import="org.dimigo.vo.UserVO" %><%--
  Created by IntelliJ IDEA.
  User: sun90
  Date: 2017-10-12
  Time: 오후 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>@Sign In</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="../../css/mystyle.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
          integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg fixed-top navbar-dark nav-bg-purple my-nav" id="navbar">
    <a class="navbar-brand" href="index.html">
        <span class="my-brand pl-1">@Sun9</span>
    </a>

    <div class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li id="nav-item-1" class="nav-item" onmouseover="menu_mouse_over(this);"
                onmouseout="menu_mouse_out(this);">
                <a class="nav-link" href="">Profile</a>
            </li>
            <li id="nav-item-2" class="nav-item" onmouseover="menu_mouse_over(this);"
                onmouseout="menu_mouse_out(this);">
                <a class="nav-link" href="">Dream</a>
            </li>
            <li id="nav-item-3" class="nav-item" onmouseover="menu_mouse_over(this);"
                onmouseout="menu_mouse_out(this);">
                <a class="nav-link" href="">My Favorite</a>
            </li>
        </ul>
        <button class="btn btn-outline-success my-2 mr-2 my-sm-0" type="button" href="/bloglogin">Sign In</button>
        <button class="btn btn-outline-info my-2 my-sm-0" type="button" onclick="">Sign up
        </button>
    </div>
</nav>

<!-- Container -->
<div class="bg-img-6 cnt1">
    <div class="caption3">
        <span class="display-3 mb-5 en-ai" style="color: white;">Sign In</span>
    </div>
    <div class="caption4 flex-center">
        <div class="caption5">
            <form class="form-signin" id="signupForm" method="post">
                <label for="id" class="sr-only">ID</label>
                <input type="text" name="id" id="id" class="form-control mb-3" placeholder="ID" required autofocus>
                <label for="pwd" class="sr-only">Password</label>
                <input type="password" name="pwd" id="pwd" class="form-control mb-3" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>
        </div>
    </div>
</div>


<div class="modal" id="myModal_signin">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Sign up</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="myModal_signup">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Sign up</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<%@ include file="/jsp/modal.jsp" %>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
        integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
        crossorigin="anonymous"></script>

<%
    if ("error".equals(request.getAttribute("msg"))) {
%>
<script>
    <%-- 로그인이 실패한 경우 처리 추가 --%>
    $('#id').val('<%=((UserVO)session.getAttribute("user")).getId()%>');
    var myModal = $('#myModal');
    myModal.find('.modal-title').text('Login Error');
    myModal.find('.modal-body').text('Invalid username or password');
    myModal.modal();
</script>
<%
    }
%>
</body>
</html>