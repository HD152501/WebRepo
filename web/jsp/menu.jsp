<%--
  Created by IntelliJ IDEA.
  User: sun90
  Date: 2017-09-21
  Time: 오후 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
                <a class="nav-link" href="a.html">메뉴1</a>
            </li>
            <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
                <a class="nav-link" href="p.html">메뉴2</a>
            </li>
            <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
                <a class="nav-link" href="event.html">메뉴3</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" id="loginForm">
            <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" required>
            <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" id="pwd" required>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Log In</button>
        </form>
    </div>
</nav>