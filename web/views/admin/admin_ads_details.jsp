<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
        .content {
            padding: 20px;
            margin-left: 300px;
        }
        .header {
            display: flex; /* Sử dụng Flexbox để sắp xếp các mục theo hàng ngang */
            justify-content: space-around; /* Giãn cách đều các mục */
            align-items: center; /* Căn giữa theo chiều dọc */
            margin-bottom: 20px; /* Khoảng cách dưới cho header */
        }
        .header div {
            flex: 1; /* Để mỗi mục chiếm cùng một khoảng không gian */
            text-align: center; /* Căn giữa văn bản trong mỗi mục */
        }
        .ad-details {
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
        .stats {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
            border: 1px solid #dee2e6; /* Đặt viền cho phần stats */
            padding: 15px; /* Thêm khoảng cách bên trong khung */
            border-radius: 10px; /* Bo góc cho khung */
            background-color: #ffffff; /* Màu nền cho phần stats */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Đổ bóng nhẹ cho khung */
        }
        .stats div {
            text-align: center;
        }
        .post-image {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 15px;
        }
        .avatar-img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <jsp:include page="../common/navbar_admin_dashboard.jsp" />

    <!-- Main Content -->
    <div class="content">
        <!-- Header Section -->
        <div class="header">
            <div>
                <p>Start date: <strong>01/09/2024</strong></p>
            </div>
            <div>
                <p>End date: <strong>01/10/2024</strong></p>
            </div>
            <div>
                <p>Type: <strong>Standard</strong></p>
            </div>
        </div>

        <!-- Advertisement Section -->
        <div class="ad-details">
            <div class="user-info">
                <img src="https://via.placeholder.com/50" alt="User Avatar" class="avatar-img">
                <span >Nguyen Xuan Hung</span>
            </div>
            <img src="https://via.placeholder.com/600x300" alt="Ad Image" class="post-image">
        </div>

        <!-- Statistics Section -->
        <div class="stats">
            <div class="reach">
                <h4>Total reach</h4>
                <p>12490 Peoples</p>
            </div>
            <div class="clicks">
                <h4>Total clicks</h4>
                <p>9876 Peoples</p>
            </div>
        </div>
    </div>
</body>
</html>
