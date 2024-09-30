<%-- 
    Document   : admin_user
    Created on : Sep 29, 2024, 11:25:13?PM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <title>User Management</title>
</head>
<body>
    <h1>User List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Username</th>
            <th>Email</th>
            <th>Role</th>
            <th>Join Date</th>
            <!-- Add other columns as necessary -->
        </tr>
        <%
            List<User> userList = (List<User>) request.getAttribute("userList");
            if (userList != null) {
                for (User user : userList) {
        %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getFullName() %></td>
            <td><%= user.getUsername() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getRole() %></td>
            <td><%= user.getJoinDate() %></td>
            <!-- Add other fields as necessary -->
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6">No users found.</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
