<%@ page import="java.util.Calendar" %>
<%--
  Created by IntelliJ IDEA.
  User: sun90
  Date: 2017-09-21
  Time: 오후 12:32
  To change this template use File | Settings | File Templates.
--%>
<%
    Calendar c = Calendar.getInstance();
%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../css/footer.css">
<footer class="footer">
    <div class="container">
        <span class="text-muted">&copy; <%=c.get(Calendar.YEAR)%> @sun9</span>
    </div>
</footer>