<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%! String name = "World"; %>
<html>
<body>
<h2>Hello <%= name %> </h2>
<% for (int i = 0; i < 5; i++) {
    out.println("<h1>" + i + "</h1>");
}%>
</body>
</html>
