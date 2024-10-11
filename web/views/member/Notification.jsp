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
            html,
            body {
                height: 100%;
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background-color: #f8f9fa;
            }

            .flex-container {
                display: flex;
                /* Sử dụng Flexbox */
                height: 100%;
                /* Chiều cao của container */
            }
            h1 {
                color: #343a40;
                text-align: center;
                margin-bottom: 20px;
            }

            .content-container {
                flex: 1;
                padding: 20px;
                overflow-y: auto;
            }
            .notifications-container {
                max-width: 1000px;
                margin: 50px auto;
                border: 2px solid #000000;
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
            .notification-item:hover {
                border-bottom: none;
                background-color: #ddd;
                color: black;
            }
            .notification-text {
                font-size: 16px;
                color: #333;
            }
            .notification-time {
                font-size: 12px;
                color: #888;
            }
            .notification{
                display: flex;
                justify-content: right;
            }
            .notification-filter{
                position: relative; left: 821px; top: -46px;
            }
        </style>
    </head>
    <body>
        <div>
            <!-- Gọi header -->
            <jsp:include page="../common/header_member.jsp" />
        </div>
        <div class="notifications-container">
            <div class="notification-header">NOTIFICATIONS</div>

            <!-- Date Filter -->
            <div class="notification-filter">
                <label for="filterDate">Sort by date:</label>
                <select id="filterDate" onchange="filterNotifications()">
                    <option value="all">All</option>
                    <option value="today">Today</option>
                    <option value="week">Last 7 Days</option>
                    <option value="month">This Month</option>
                </select>
            </div>

            <!-- Sample Notification Items -->
            <div class="notification-item" data-date="2024-10-08">
                <div class="notification-text">You have a new message from John.</div>
                <div class="notification-time">2 hours ago</div>
            </div>
            <div class="notification-item" data-date="2024-08-07">
                <div class="notification-text">Nguyen Huu Hoai Linh liked your post.</div>
                <div class="notification-time">1 day ago</div>
            </div>
            <div class="notification-item" data-date="2024-10-05">
                <div class="notification-text">You received a friend request from Truong Huy.</div>
                <div class="notification-time">3 days ago</div>
            </div>
        </div>

        <script>
            function filterNotifications() {
                const filter = document.getElementById('filterDate').value;
                const today = new Date();
                const weekAgo = new Date(today);
                weekAgo.setDate(today.getDate() - 7);
                const monthAgo = new Date(today);
                monthAgo.setMonth(today.getMonth() - 1);

                document.querySelectorAll('.notification-item').forEach(item => {
                    const itemDate = new Date(item.getAttribute('data-date'));
                    if (filter === 'today' && itemDate.toDateString() !== today.toDateString()) {
                        item.style.display = 'none';
                    } else if (filter === 'week' && itemDate < weekAgo) {
                        item.style.display = 'none';
                    } else if (filter === 'month' && itemDate < monthAgo) {
                        item.style.display = 'none';
                    } else {
                        item.style.display = '';
                    }
                });
            }
        </script>
    </body>
</html>
