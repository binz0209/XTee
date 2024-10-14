<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Advertisement Management</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>
    <!-- Navbar -->
    <jsp:include page="../common/navbar_admin_dashboard.jsp" />

    <!-- Main Content -->
    <div class="content">
        <!-- Header Section -->
        <div class="header-ads-details">
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
