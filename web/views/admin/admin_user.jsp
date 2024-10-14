<%-- 
    Document   : admin_user
    Created on : Sep 29, 2024, 11:25:13 PM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>
    <div>
        <div>
            <!-- Gọi header -->
            <jsp:include page="../common/header_admindashboard.jsp" />
        </div>
        <div class="flex-container">
            <!-- Gọi navbar -->
            <jsp:include page="../common/navbar_admin_dashboard.jsp"/>
            <div class="content-container">
                <!-- Thanh tìm kiếm -->
                <div class="search-container">
                    <svg class="search-icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                        <path fill="currentColor" d="m19.6 21l-6.3-6.3q-.75.6-1.725.95T9.5 16q-2.725 0-4.612-1.888T3 9.5t1.888-4.612T9.5 3t4.613 1.888T16 9.5q0 1.1-.35 2.075T14.7 13.3l6.3 6.3zM9.5 14q1.875 0 3.188-1.312T14 9.5t-1.312-3.187T9.5 5T6.313 6.313T5 9.5t1.313 3.188T9.5 14"/>
                    </svg>
                    <input type="text" class="search-bar" placeholder="Search content...">
                    <svg class="filter-icon" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 512 512">
                        <path fill="currentColor" d="M472 168H40a24 24 0 0 1 0-48h432a24 24 0 0 1 0 48m-80 112H120a24 24 0 0 1 0-48h272a24 24 0 0 1 0 48m-96 112h-80a24 24 0 0 1 0-48h80a24 24 0 0 1 0 48"/>
                    </svg>
                </div>
                <div>
                    <table class="admin-table admin-table-nowrap"> <!-- Sử dụng lớp admin-table -->
                        <tr>
                            <th style="text-align: center;">Id</th>
                            <th style="text-align: center;">Avatar</th>
                            <th style="text-align: center;">Role</th>
                            <th style="text-align: center;">Full Name</th>
                            <th style="text-align: center;">Username</th>
                            <th style="text-align: center;">Join date</th>
                        </tr>
                        <%
                            List<User> userList = (List<User>) request.getAttribute("userList");
                            if (userList != null && !userList.isEmpty()) {
                        %>
                        <%
                                for (User user : userList) {
                        %>
                        <tr>
                            <td style="text-align: center;"><%= user.getId() %></td>
                            <td style="text-align: center;">
                                <img src="<%= user.getAvatar() %>" class="admin-avatar-img"> <!-- Sử dụng lớp admin-avatar-img -->
                            </td>
                            <td style="text-align: center;"><%= user.getRole() %></td>
                            <td style="text-align: center;"><%= user.getFullName() %></td>
                            <td style="text-align: center;"><%= user.getUsername() %></td>
                            <td style="text-align: center;"><%= user.getJoinDate() %></td>
                        </tr>
                        <%
                                }
                        %>
                        <% } else { %>
                        <tr>
                            <td colspan="6" class="no-users-found">No users found.</td> <!-- Thông báo không có người dùng -->
                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>