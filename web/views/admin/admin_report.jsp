<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Report Management</title>
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

        .table-container {
            margin-top: 20px;
        }

        .table th, .table td {
            vertical-align: middle;
        }
    </style>
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
                                <td onclick="location.href='adminUser?sort=role'" style="cursor: pointer;">Post</td>
                            </tr>
                            <tr>
                                <td onclick="location.href='adminUser?sort=joinDate'" style="cursor: pointer;">Reporting date</td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="table-container">
                    <h2>Report List</h2>
                    <table class="admin-table admin-table-nowrap">
                        <thead>
                            <tr>
                                <th>User</th>
                                <th>Role</th>
                                <th>Caption</th>
                                <th>Post ID</th>
                                <th>Reporting Time</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Giả định có danh sách báo cáo được lấy từ backend -->
                            <c:forEach var="report" items="${reportList}">
                                <tr>
                                    <td>
                                        <img src="https://via.placeholder.com/50" alt="User Avatar" class="admin-avatar-img">
                                        <span class="admin-user-name">${report.userName}</span>
                                    </td>
                                    <td>${report.role}</td>
                                    <td>${report.reportTime}</td>
                                    <td>${report.postId}</td>
                                    <td>${report.caption}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
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

        window.onclick = function(event) {
            var sortTable = document.getElementById("sortTable");
            if (!event.target.matches('.filter-icon') && sortTable.style.display === "block") {
                sortTable.style.display = "none";
            }
        }
    </script>
</body>
</html>
