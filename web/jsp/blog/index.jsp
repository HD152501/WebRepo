<%@ page import="org.dimigo.vo.UserVO" %><%--
  Created by IntelliJ IDEA.
  User: sun90
  Date: 2017-10-12
  Time: 오후 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>@Sun9</title>
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
    <a class="navbar-brand" href="index.jsp">
        <span class="my-brand pl-1">@Sun9</span>
    </a>

    <div class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li id="nav-item-1" class="nav-item" onmouseover="menu_mouse_over(this);" onmouseout="menu_mouse_out(this);">
                <a class="nav-link" href="profile.html">Profile</a>
            </li>
            <li id="nav-item-2" class="nav-item" onmouseover="menu_mouse_over(this);" onmouseout="menu_mouse_out(this);">
                <a class="nav-link" href="dream.html">Dream</a>
            </li>
            <li id="nav-item-3" class="nav-item" onmouseover="menu_mouse_over(this);" onmouseout="menu_mouse_out(this);">
                <a class="nav-link" href="myfavorite.html">My Favorite</a>
            </li>
        </ul>
        <%
            if(session.getAttribute("user") != null) {
        %>
            <div class="mr-3 ko-nanumsq" style="color: white; float: right;">
                <span><%=((UserVO)session.getAttribute("user")).getNickname()%>님, 환영합니다.</span>
            </div>
        <%
            }
        %>
        <button class="btn btn-outline-success my-2 mr-2 my-sm-0" type="button" onclick="location.href='/bloglogin'">Sign In</button>
        <button class="btn btn-outline-info my-2 my-sm-0" type="button" onclick="javascript:location.href=''">Sign up</button>
    </div>
</nav>

<!-- Index section 1 -->
<div id="sec1" class="parallax bg-img-1 cnt1">
    <div class="caption1">
        <span class="display-1 ko-nanumsq">안녕하세요!</span><br>
        <p class="lead ko-nanumsq mt-3">한국디지털미디어고등학교 2학년 5반에 재학 중인 강선구의 블로그입니다.</p>
    </div>
</div>

<!-- Index section 2 -->
<div id="sec2" class="parallax bg-img-2 cnt1">
    <div class="caption2">
        <span class="display-2 ko-nanumsq">이 블로그는 재밌습니다!</span><br>
        <p class="lead ko-nanumsq mt-3">아마도요.</p>
    </div>
</div>

<!-- Index section 3 -->
<div id="sec3" class="parallax bg-img-3 cnt1">
    <div class="caption1">
        <span class="display-2 ko-nanumsq">이 블로그는 멋집니다!</span><br>
        <p class="lead ko-nanumsq mt-3">인정합니다.</p>
    </div>
</div>

<div class="modal" id="myModal_signin">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Sign In</h5>
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

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
        integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
        crossorigin="anonymous"></script>
<script src="../../js/index.js"></script>
<!-- Mouse Event -->
<script src="../../js/mouseevent.js"></script>
<!-- Log in -->
<script src="../../js/signin.js"></script>
</body>
</html>