<%-- 
    Document   : admin_ads
    Created on : Oct 2, 2024, 9:31:15 PM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Advertisement Management</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <style>
        html, body {
            height: 100%; 
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        h1 {
            color: #343a40;
            text-align: center;
            margin-bottom: 20px;
        }
        .search-container {
            display: flex;
            align-items: center;
            margin: 20px 0;
        }
        .search-icon {
            margin-right: 8px;
        }
        .filter-icon {
            margin-left: 8px;
        }
        .search-bar {
            padding: 8px;
            border: 1px solid #dee2e6;
            border-radius: 30px;
            width: 300px;
            background-color: #D9D9D9;
        }
        .content-container {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
        }

        .ads-container {
            background-color: #ffffff;
            padding: 15px;
            border-radius: 10px;
            margin: 20px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
        }

        .user-info {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .avatar-img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
        }

        .user-name {
            font-weight: bold;
            font-size: 1.1rem;
        }

        .post-image {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .post-caption {
            font-size: 1rem;
            color: #343a40;
        }

        /* Table style (existing styles) */
        table {
            width: 82.5%;
            height: 7%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dee2e6;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e9ecef;
        }

        .no-users {
            text-align: center;
            padding: 20px;
            color: #dc3545;
        }
        .ads-detail {
            background-color: #CCE0AC; /* Màu nền cho từng báo cáo */
            padding: 15px;
            border-radius: 10px; /* Bo góc cho từng báo cáo */
            margin: 10px 0; /* Khoảng cách giữa các báo cáo */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Đổ bóng */
        }
        .user-info {
            display: flex; /* Sử dụng flexbox để căn chỉnh nội dung */
            justify-content: space-between; /* Căn đều không gian giữa các phần tử */
            align-items: center; /* Căn giữa theo chiều dọc */
            width: 100%; /* Đảm bảo chiếm toàn bộ chiều rộng */
        }

        .button-container {
            display: flex; /* Sử dụng flexbox để đặt các nút sát nhau */
            margin-left: auto; /* Đẩy button-container sang bên phải */
        }
        .btn {
            margin-left: 10px; /* Khoảng cách giữa các nút */
            padding: 8px 14px; /* Padding cho nút */
            border: none; /* Bỏ viền */
            border-radius: 15px; /* Bo góc 15 độ */
            cursor: pointer; /* Hiển thị con trỏ khi hover */
            border: 1px solid black; /* Viền đen cho nút */
            color: black; /* Màu chữ đen cho nút */
            font-size: 1.1rem;
        }
        .accept-btn {
            background-color: #CCE0AC; /* Màu nền cho nút Accept */
        }

        .deny-btn {
            background-color: #FF5E5E; /* Màu nền cho nút Deny */
        }

        .accepted {
            color: #00BC32; /* Màu chữ cho nút Accepted */
            background-color: transparent; /* Xóa màu nền */
            border: none; /* Bỏ viền */
        }
        .denied {
            color: #dc3545; /* Màu chữ cho nút Denied */
            background-color: transparent; /* Xóa màu nền */
            border: none; /* Bỏ viền */
        }

        .delete-btn {
            background-color: #FFCCCB; /* Màu nền cho nút Delete */
        }
        .flex-container {
            display: flex; /* Sử dụng Flexbox */
            height: 100%; /* Chiều cao của container */
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
                    <svg class="search-icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                        <path fill="currentColor" d="m19.6 21l-6.3-6.3q-.75.6-1.725.95T9.5 16q-2.725 0-4.612-1.888T3 9.5t1.888-4.612T9.5 3t4.613 1.888T16 9.5q0 1.1-.35 2.075T14.7 13.3l6.3 6.3zM9.5 14q1.875 0 3.188-1.312T14 9.5t-1.312-3.187T9.5 5T6.313 6.313T5 9.5t1.313 3.188T9.5 14"/>
                    </svg>
                    <input type="text" class="search-bar" placeholder="Search reports...">
                    <svg class="filter-icon" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 512 512">
                        <path fill="currentColor" d="M472 168H40a24 24 0 0 1 0-48h432a24 24 0 0 1 0 48m-80 112H120a24 24 0 0 1 0-48h272a24 24 0 0 1 0 48m-96 112h-80a24 24 0 0 1 0-48h80a24 24 0 0 1 0 48"/>
                    </svg>
                </div>

                <div class="ads-container">
                    <div class="user-info">
                        <img src="https://via.placeholder.com/50" alt="User Avatar" class="avatar-img">
                        <span class="full-name">Nguyen Xuan Hung</span>
                        <div class="button-container">
                            <button class="btn accept-btn" onclick="acceptAd(this)">Accept</button>
                            <button class="btn deny-btn" onclick="denyAd(this)">Deny</button>
                            <button class="btn delete-btn" onclick="deleteAd(this)" style="display:none;">Delete</button>
                        </div>
                    </div>
                    <p class="post-caption">Yummy</p>
                    <img src="https://via.placeholder.com/600x300" alt="Post Image" class="post-image">
                    <!-- Report List -->
                    <div>
                        <!-- Ads-Details -->
                        <p>Campaign name: Food Process Technology</p>
                        <p>Start date: 01/09/2024</p>
                        <p>End date: 01/10/2024</p>
                        <p>Total clicks: 9876</p>
                        <p>Budget: 30$</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function acceptAd(button) {
            const adContainer = button.closest('.ads-container');
            const denyButton = adContainer.querySelector('.deny-btn');
            const deleteButton = adContainer.querySelector('.delete-btn');

            // Đổi màu nút Accept và Disable Deny
            button.classList.add('accepted');
            denyButton.style.display = 'none'; // Ẩn nút Deny
            button.innerText = 'Accepted'; // Thay đổi nội dung nút Accept
            button.disabled = true; // Khóa nút Accept
            deleteButton.style.display = 'inline'; // Hiện nút Delete
        }

        function denyAd(button) {
            const adContainer = button.closest('.ads-container');
            const acceptButton = adContainer.querySelector('.accept-btn');
            const deleteButton = adContainer.querySelector('.delete-btn');

            // Đổi màu nút Deny và Disable Accept
            button.classList.add('denied');
            acceptButton.style.display = 'none'; // Ẩn nút Accept
            button.innerText = 'Denied'; // Thay đổi nội dung nút Deny
            button.disabled = true; // Khóa nút Deny
            deleteButton.style.display = 'inline'; // Hiện nút Delete
        }

        function deleteAd(button) {
            const adContainer = button.closest('.ads-container');
            adContainer.remove(); // Xóa quảng cáo khỏi giao diện
        }
    </script>
</body>
</html>