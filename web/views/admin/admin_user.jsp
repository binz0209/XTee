<%-- 
    Document   : admin_user
    Created on : Sep 29, 2024, 11:25:13?PM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <style>
        html, body {
            height: 100%; /* Đặt chiều cao cho html và body */
            margin: 0; /* Xóa margin mặc định */
            padding: 0; /* Xóa padding mặc định */
            font-family: Arial, sans-serif; /* Đặt font chữ cho toàn bộ trang */
            background-color: #f8f9fa; /* Màu nền sáng cho trang */
        }
        h1 {
            color: #343a40; /* Màu chữ cho tiêu đề */
            text-align: center; /* Căn giữa tiêu đề */
            margin-bottom: 20px; /* Khoảng cách dưới tiêu đề */
        }
        .search-container {
            display: flex; /* Sử dụng Flexbox */
            align-items: center; /* Căn giữa theo chiều dọc */
            margin: 20px 0; /* Khoảng cách trên và dưới cho thanh tìm kiếm */
        }
        .search-icon {
            margin-right: 8px; /* Khoảng cách bên phải của icon */
        }
        .search-bar {
            padding: 8px; /* Padding cho thanh tìm kiếm */
            border: 1px solid #dee2e6; /* Đường viền cho thanh tìm kiếm */
            border-radius: 30px; /* Bo góc 30 độ cho thanh tìm kiếm */
            width: 300px; /* Chiều rộng cho thanh tìm kiếm */
            background-color: #D9D9D9; /* Màu nền cho thanh tìm kiếm */
        }
        table {
            width: 82.5%; /* Giảm chiều rộng của bảng xuống 80% */
            height: 7%;
            margin: 0 auto; /* Căn giữa bảng trong trang */
            border-collapse: collapse; /* Hợp nhất các đường viền */
            background-color: #ffffff; /* Màu nền bảng */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Thêm bóng cho bảng */
        }
        th, td {
            border: 1px solid #dee2e6; /* Đường viền cho ô */
            padding: 8px; /* Giảm padding cho ô */
            text-align: left; /* Căn trái cho văn bản */
        }
        th {
            background-color: #007bff; /* Màu nền cho tiêu đề bảng */
            color: white; /* Màu chữ cho tiêu đề bảng */
        }
        tr:nth-child(even) {
            background-color: #f2f2f2; /* Màu nền cho hàng chẵn */
        }
        tr:hover {
            background-color: #e9ecef; /* Màu nền khi hover vào hàng */
        }
        .no-users {
            text-align: center; /* Căn giữa khi không có người dùng */
            padding: 20px; /* Thêm padding */
            color: #dc3545; /* Màu chữ thông báo không có người dùng */
        }
        .avatar-img {
            width: 50px; /* Chiều rộng của ảnh */
            height: 50px; /* Chiều cao của ảnh */
            border-radius: 50%; /* Để bo tròn ảnh */
            object-fit: cover; /* Đảm bảo ảnh không bị biến dạng */
        }
        .table-nowrap td {
            white-space: nowrap; /* Ngăn cản việc xuống dòng */
        }
        .content-container {
            flex: 1; /* Để content-container chiếm toàn bộ không gian còn lại */
            padding: 20px; /* Khoảng cách bên trong */
            overflow-y: auto; /* Cho phép cuộn dọc nếu nội dung vượt quá chiều cao */
        }
        
        .modal {
            position: absolute; /* Đặt vị trí của modal */
            z-index: 1050; /* Đặt z-index đủ lớn */
            display: none; /* Ẩn modal mặc định */
            border: 1px solid #ccc; /* Viền cho modal */
            background-color: white; /* Nền trắng cho modal */
            padding: 10px; /* Giảm padding cho nội dung modal */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); /* Đổ bóng cho modal */
            border-radius: 8px; /* Bo góc cho modal */
            transition: opacity 0.3s ease, transform 0.3s ease; /* Hiệu ứng chuyển động */
            opacity: 0; /* Đặt độ trong suốt ban đầu */
            transform: translateY(-10px); /* Đưa modal lên một chút */
            width: 200px; /* Thay đổi chiều rộng của modal */
        }

        .modal.show {
            display: block; /* Hiện modal khi có class "show" */
            opacity: 1; /* Đặt độ trong suốt khi hiển thị */
            transform: translateY(0); /* Trở lại vị trí ban đầu */
        }

        .modal-header {
            padding-bottom: 5px; /* Giảm khoảng cách dưới tiêu đề */
        }

        .modal-title {
            font-size: 1.1rem; /* Giảm kích thước chữ cho tiêu đề */
        }

        .close {
            cursor: pointer; /* Con trỏ chuột khi hover */
            font-size: 1.5rem; /* Kích thước chữ cho nút đóng */
            color: #6c757d; /* Màu chữ cho nút đóng */
        }

        .close:hover {
            color: #dc3545; /* Đổi màu khi hover */
        }

        .list-group {
            list-style: none; /* Bỏ danh sách mặc định */
            padding: 0; /* Xóa padding mặc định */
            margin: 0; /* Xóa margin mặc định */
        }

        .list-group-item {
            padding: 10px 15px; /* Padding cho từng mục trong danh sách */
            border-radius: 4px; /* Bo góc cho mục danh sách */
            cursor: pointer; /* Con trỏ chuột khi hover */
            transition: background-color 0.2s ease; /* Hiệu ứng chuyển động */
        }

        .list-group-item:hover {
            background-color: #f8f9fa; /* Màu nền khi hover */
        }
    </style>
</head>
<body>
    <!-- Gọi navbar -->
    <jsp:include page="../common/navbar_admin_dashboard.jsp" />

    <div class="content-container">
        <!-- Thanh tìm kiếm -->
        <div class="search-container">
            <svg class="search-icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                <path fill="currentColor" d="m19.6 21l-6.3-6.3q-.75.6-1.725.95T9.5 16q-2.725 0-4.612-1.888T3 9.5t1.888-4.612T9.5 3t4.613 1.888T16 9.5q0 1.1-.35 2.075T14.7 13.3l6.3 6.3zM9.5 14q1.875 0 3.188-1.312T14 9.5t-1.312-3.187T9.5 5T6.313 6.313T5 9.5t1.313 3.188T9.5 14"/>
            </svg>
            <input type="text" class="search-bar" placeholder="Search users...">
        </div>
        <div>
            <table class="table-nowrap">
                <tr>
                    <td style="text-align: center;">Id</td>
                    <td style="text-align: center;">Avatar</td>
                    <td style="text-align: center;">Role</td>
                    <td style="text-align: center;">Full Name</td>
                    <td style="text-align: center;">Username</td>
                    <td style="text-align: center;">Join date</td>
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
                        <img src="<%= user.getAvatar() %>" class="avatar-img"> <!-- Hiển thị avatar -->
                    </td>
                    <td style="text-align: center;"><%= user.getRole() %></td>
                    <td><%= user.getFullName() %></td>
                    <td><%= user.getUsername() %></td>
                    <td><%= user.getJoinDate() %></td>
                    <td style="text-align: center;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="cursor:pointer;" 
                             onclick="openUserOptions(event, '<%= user.getId() %>')">
                            <path fill="currentColor" d="M3 18v-2h18v2zm0-5v-2h18v2zm0-5V6h18v2z" />
                        </svg>
                    </td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="6" class="no-users">No users found.</td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
        
    </div>

    <!-- Popup Modal -->
    <div class="modal" id="userOptionsModal">
        <div class="modal-header">
            <h5 class="modal-title">User Options</h5>
            <button type="button" class="close" onclick="closeModal()">×</button>
        </div>
        <div class="modal-body">
            <ul class="list-group">
                <li class="list-group-item" onclick="viewProfile()">View Profile</li>
                <li class="list-group-item" onclick="accountInfo()">Account Information</li>
                <li class="list-group-item" onclick="contentHistory()">Content Posting History</li>
                <li class="list-group-item" onclick="banUser()">Ban User</li>
            </ul>
        </div>
    </div>



    <!-- jQuery và Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function openUserOptions(event, userId) {
            // Lưu ID người dùng vào biến toàn cục để sử dụng trong các hàm khác
            window.selectedUserId = userId;

            // Tính toán vị trí để popup xuất hiện ngay bên cạnh biểu tượng
            const modal = $('#userOptionsModal');
            const offset = $(event.currentTarget).offset();
            modal.css({
                top: offset.top + 20, // Đặt khoảng cách từ trên
                left: offset.left - 10 // Đặt khoảng cách từ bên trái
            });
            modal.addClass('show'); // Hiện modal
        }

        function closeModal() {
            $('#userOptionsModal').removeClass('show'); // Ẩn modal
        }

        function viewProfile() {
            alert('View Profile for User ID: ' + window.selectedUserId);
            closeModal(); // Đóng modal sau khi chọn
        }

        function accountInfo() {
            alert('Account Info for User ID: ' + window.selectedUserId);
            closeModal(); // Đóng modal sau khi chọn
        }

        function contentHistory() {
            alert('Content Posting History for User ID: ' + window.selectedUserId);
            closeModal(); // Đóng modal sau khi chọn
        }

        function banUser() {
            if (confirm('Are you sure you want to ban User ID: ' + window.selectedUserId + '?')) {
                alert('User ID: ' + window.selectedUserId + ' has been banned.');
                closeModal(); // Đóng modal sau khi chọn
            }
        }
    </script>
</body>
</html>