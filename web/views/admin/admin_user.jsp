<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="service.UserService" %>

<%
    // Khởi tạo UserService
    UserService userService = new UserService();
    List<User> userList = null;

    // Kiểm tra xem có từ khóa tìm kiếm không
    String keyword = request.getParameter("keyword");
    String sort = request.getParameter("sort"); // Lấy tham số sắp xếp

    try {
        if (keyword != null && !keyword.isEmpty()) {
            // Nếu có từ khóa, tìm kiếm người dùng theo từ khóa
            userList = userService.searchUsers(keyword);
        } else {
            // Nếu không có từ khóa, lấy tất cả người dùng
            userList = userService.getAllUsers();
        }

        // Sắp xếp danh sách người dùng nếu có tham số sort
        if (sort != null) {
            userList = userService.sortUsers(userList, sort); // Giả sử bạn đã có phương thức sortUsers
        }

        request.setAttribute("userList", userList); // Đưa danh sách người dùng vào request
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <style>
        .submit-btn {
            padding: 8px 16px;
            border: none;
            border-radius: 30px;
            background-color: #CCE0AC;
            color: #343a40;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #A9C6B7;
        }

        .filter-icon {
            margin-bottom: 16px;
            cursor: pointer;
            display: inline-block;
        }

        .sort-table {
            display: none;
            position: absolute;
            background-color: white;
            border: 2px solid #ccc;
            z-index: 1000;
            margin-left: 8px;
            border-radius: 15px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 200px;
        }

        .sort-table th, .sort-table td {
            padding: 10px;
            width: 200px;
            text-align: center;
        }

        .sort-table a {
            text-decoration: none;
            color: black;
        }

        .sort-table a:hover {
            text-decoration: none;
            color: black;
        }

        .sort-table th {
            background-color: #f8f9fa;
            font-weight: 600;
            border-bottom: 2px solid #dee2e6;
            border-radius: 15px 15px 0px 0px;
        }

        .sort-table td:hover {
            color: #0056b3;
            background-color: #CCE0AC;
        }
        
        .menu-popup {
            display: none;
            position: absolute;
            background-color: white;
            border: 2px solid #ccc;
            border-radius: 15px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            z-index: 1000;
        }

        .menu-popup table {
            width: 100%;
            border-collapse: collapse;
        }

        .menu-popup td {
            padding: 8px;
            border: 2px solid #ccc;
            text-align: center;
        }

        .menu-popup a {
            text-decoration: none;
            color: black;
        }

        .menu-popup a:hover {
            text-decoration: none;
            color: black;
        }
    </style>
</head>
<body>
    <div>
        <div>
            <jsp:include page="../common/header_admindashboard.jsp" />
        </div>
        <div class="flex-container">
            <jsp:include page="../common/navbar_admin_dashboard.jsp"/>
            <div class="content-container">
                <div class="search-container">
                    <form action="adminUser" method="get">
                        <input type="text" class="search-bar" name="keyword" placeholder="Search...">
                        <button type="submit" class="submit-btn">Tìm kiếm</button>
                    </form>
                    <div style="position: relative;">
                        <svg class="filter-icon" xmlns="http://www.w3.org/2000/svg" width="42px" height="42px" viewBox="0 0 512 512" onclick="toggleSortTable()">
                            <path fill="currentColor" d="M472 168H40a24 24 0 0 1 0-48h432a24 24 0 0 1 0 48m-80 112H120a24 24 0 0 1 0-48h272a24 24 0 0 1 0 48m-96 112h-80a24 24 0 0 1 0-48h80a24 24 0 0 1 0 48"/>
                        </svg>

                        <table class="sort-table" id="sortTable">
                            <tr>
                                <th>Sort by</th>
                            </tr>
                            <tr>
                                <td onclick="location.href='adminUser?sort=role'" style="cursor: pointer;">Role</td>
                            </tr>
                            <tr>
                                <td onclick="location.href='adminUser?sort=joinDate'" style="cursor: pointer;">Join date</td>
                            </tr>
                            <tr>
                                <td onclick="location.href='adminUser?sort=name'" style="cursor: pointer;">Name</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div>
                    <table class="admin-table admin-table-nowrap">
                        <tr>
                            <th style="text-align: center;">Id</th>
                            <th style="text-align: center;">Avatar</th>
                            <th style="text-align: center;">Role</th>
                            <th style="text-align: center;">Full Name</th>
                            <th style="text-align: center;">Username</th>
                            <th style="text-align: center;">Join date</th>
                            <th style="text-align: center;">Actions</th> <!-- Thêm cột cho actions -->
                        </tr>
                        <%
                            if (userList != null && !userList.isEmpty()) {
                                for (User user : userList) {
                        %>
                        <tr>
                            <td style="text-align: center;"><%= user.getId() %></td>
                            <td style="text-align: center;">
                                <img src="<%= user.getAvatar() %>" class="admin-avatar-img">
                            </td>
                            <td style="text-align: center;"><%= user.getRole() %></td>
                            <td style="text-align: center;"><%= user.getFullName() %></td>
                            <td style="text-align: center;"><%= user.getUsername() %></td>
                            <td style="text-align: center;"><%= user.getJoinDate() %></td>
                            <td style="text-align: center;">
                                <svg class="menu-icon" xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" onclick="toggleMenu(event)">
                                    <path fill="currentColor" d="M3 18v-2h18v2zm0-5v-2h18v2zm0-5V6h18v2z"/>
                                </svg>
                                <div class="menu-popup">
                                    <table>
                                        <tr>
                                            <td style="text-align: center;border-radius: 15px 15px 0px 0px;"><a href="#">View profile</a></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;"><a href="#">Account information</a></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;"><a href="#">Content posting history</a></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center; background-color: #FF5E5E; border-radius: 0 0 15px 15px;"><a href="#">Ban user</a></td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <%
                                }
                            } else { 
                        %>
                        <tr>
                            <td colspan="7" class="no-users-found">No users found.</td>
                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
    <script>
        function toggleSortTable() {
            var sortTable = document.getElementById("sortTable");
            sortTable.style.display = sortTable.style.display === "block" ? "none" : "block";
        }

        function toggleMenu(event) {
            event.stopPropagation(); // Ngăn chặn sự kiện click truyền lên cha
            var menu = event.currentTarget.nextElementSibling;
            menu.style.display = menu.style.display === "block" ? "none" : "block";
        }

        window.onclick = function(event) {
            var sortTable = document.getElementById("sortTable");
            var menus = document.querySelectorAll('.menu-popup');
            if (!event.target.matches('.filter-icon') && !sortTable.contains(event.target)) {
                if (sortTable.style.display === "block") {
                    sortTable.style.display = "none";
                }
            }
            menus.forEach(function(menu) {
                if (menu.style.display === "block" && !menu.contains(event.target)) {
                    menu.style.display = "none";
                }
            });
        }
    </script>

</body>
</html>
