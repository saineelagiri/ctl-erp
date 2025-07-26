<%@ page language="java" %>
<html>
<head><title>Home</title></head>
<body>
<h2>Welcome, <%= session.getAttribute("username") %></h2>
<a href="index.jsp">Logout1</a>
</body>
</html>
