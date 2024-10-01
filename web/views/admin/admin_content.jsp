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

        .post-container {
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

       
        <div class="post-container">
            <div class="user-info">
                <img src="https://via.placeholder.com/50" alt="User Avatar" class="avatar-img">
                <span class="full-name">Nguyen XuanHung</span>
            </div>
            <img src="https://via.placeholder.com/600x300" alt="Post Image" class="post-image">
            <p class="post-caption">Yummy</p>
        </div>
    </div>
</body>
</html>
