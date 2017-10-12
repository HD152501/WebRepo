<%--
  Created by IntelliJ IDEA.
  User: sun90
  Date: 2017-10-09
  Time: 오후 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>

<%-- JSP 주석 --%>
<%! private static final String DEFAULT_NAME = "Guest"; %>
<%
    String name = request.getParameter("name");
    if (name==null) name = DEFAULT_NAME;
%>
<h1>Hello, <%=name%></h1>

</body>
</html>
