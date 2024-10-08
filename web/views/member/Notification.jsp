<%-- 
    Document   : Notification
    Created on : Oct 7, 2024, 9:55:25 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notifications</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .notifications-container {
            width: 400px;
            margin: 50px auto;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
            padding: 20px;
        }
        .notification-header {
            font-size: 24px;
            text-align: left;
            margin-bottom: 20px;
        }
        .notification-item {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .notification-item:last-child {
            border-bottom: none;
        }
        .notification-text {
            font-size: 16px;
            color: #333;
        }
        .notification-time {
            font-size: 12px;
            color: #888;
        }
    </style>
</head>
<body>
    <div class="notifications-container">
        <div class="notification-header">NOTIFICATIONS</div>

        <!-- Sample Notification Items -->
        <div class="notification-item">
            <div class="notification-text">You have a new message from John.</div>
            <div class="notification-time">2 hours ago</div>
        </div>
        <div class="notification-item">
            <div class="notification-text">Nguyen Huu Hoai Linh liked your post.</div>
            <div class="notification-time">1 day ago</div>
        </div>
        <div class="notification-item">
            <div class="notification-text">You received a friend request from Truong Huy.</div>
            <div class="notification-time">3 days ago</div>
        </div>
    </div>
</body>
</html>
