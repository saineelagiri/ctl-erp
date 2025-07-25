<%@ page language="java" import="com.sample.login.LoginBean" %>
<jsp:useBean id="loginBean" class="com.sample.login.LoginBean" scope="request"/>
<jsp:setProperty name="loginBean" property="*"/>

<html>
<head><title>Login Page</title></head>
<body>
<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        if (loginBean.validate()) {
            session.setAttribute("username", loginBean.getUsername());
            response.sendRedirect("home.jsp");
            return;
        } else {
            out.println("<p style='color:red;'>Invalid username or password</p>");
        }
    }
%>
<h2>Login</h2>
<form method="post">
    Username: <input type="text" name="username" required><br><br>
    Password: <input type="password" name="password" required><br><br>
    <input type="submit" value="Login">
</form>
</body>
</html>
