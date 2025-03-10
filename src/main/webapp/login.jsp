<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 3/8/2025
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String errorMessage = "";

    if (email != null && password != null) {
        if (!email.matches("^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$")) {
            errorMessage = "Please enter a valid email address.";
        } else if (password.trim().isEmpty()) {
            errorMessage = "Password cannot be empty.";
        } else {
            out.println("Form submitted successfully. Processing login...");

        }
    }
%>


 <form method="post" action="<%= request.getContextPath() %>/login" enctype="multipart/form-data">
    <label>Email:</label>
    <input type="text" name="email"  value="<%= email != null ? email : "" %>" required><br><br>

    <label>Password:</label>
    <input type="password" name="password" required><br><br>

     <button type="submit">Login</button>
 </form>

<p style="color:red;"><%= errorMessage %></p>
</body>
</html>
