<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 3/8/2025
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <form method="post" action="<%= request.getContextPath() %>/signin" enctype="multipart/form-data">
     <label>Username:</label>
     <input type="text" name="fullname" required><br><br>

     <label>Email:</label>
     <input type="email" name="email" required><br><br>

     <label>Phone Number:</label>
     <input type="tel" name="phone" required><br><br>

     <label>Password:</label>
     <input type="password" name="password" required><br><br>

     <button type="submit">Register</button>
 </form>
</body>
</html>
