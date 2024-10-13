<%-- 
    Document   : admin_auditlog
    Created on : Oct 2, 2024, 10:13:57 PM
    Author     : TuLinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        .flex-container {
            display: flex; /* Sử dụng Flexbox */
            height: 100%; /* Chiều cao của container */
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
        /* Định dạng cho vùng chứa thông báo */
        .log-container {
            background-color: #D9D9D9; /* Màu nền xám cho vùng thông báo */
            padding: 20px; /* Khoảng cách bên trong */
            margin: 20px auto; /* Tự động căn giữa */
            width: 95%; /* Chiếm 95% chiều rộng */
            max-width: 90%; /* Độ rộng tối đa */
            border-radius: 5px; /* Bo tròn viền */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Đổ bóng nhẹ cho vùng chứa */
            display: flex; /* Sử dụng Flexbox */
            flex-direction: column; /* Sắp xếp theo cột */
            height: 90%; /* Chiếm toàn bộ chiều cao */
        }

        /* Định dạng cho vùng chứa tin nhắn */
        .log-messages {
            flex-grow: 1; /* Chiếm toàn bộ không gian còn lại */
            overflow-y: auto; /* Cuộn nếu nội dung vượt quá chiều cao */
            padding-bottom: 20px; /* Khoảng cách dưới cùng */
        }

        /* Định dạng cho từng thông báo */
        .log-message {
            margin-bottom: 15px; /* Khoảng cách giữa các thông báo */
        }

        /* Định dạng cho thời gian thông báo */
        .log-time {
            font-weight: normal; /* Thay đổi thành thường */
            font-size: 14px; /* Kích thước chữ nhỏ hơn cho thời gian */
            color: #343a40; /* Màu chữ */
            margin-bottom: 5px; /* Khoảng cách giữa thời gian và nội dung */
        }

        /* Định dạng cho nội dung thông báo */
        .log-event {
            font-size: 16px; /* Kích thước chữ cho nội dung */
            color: #343a40; /* Màu chữ */
        }

        .log-event strong {
            font-weight: bold; /* In đậm tên người dùng */
        }

        /* Định dạng cho ngày */
        .log-date {
            text-align: center; /* Căn giữa ngày */
            font-size: 20px; /* Kích thước chữ cho ngày */
            font-weight: bold; /* In đậm ngày */
            margin: 20px 0; /* Khoảng cách dưới và trên cho ngày */
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
                <!-- Vùng chứa tất cả thông báo Audit/Log -->
                <div class="log-container">
                    <!-- Vùng chứa tin nhắn -->
                    <div class="log-messages" id="logMessages">
                        <!-- Tin nhắn cho September 22, 2024 -->
                        <div class="log-date">September 22, 2024</div>
                        <div class="log-message">
                            <div class="log-time">19:55</div>
                            <div class="log-event"><strong>tulinh</strong> logged in.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">19:56</div>
                            <div class="log-event"><strong>tulinh</strong> updated profile.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">19:57</div>
                            <div class="log-event"><strong>tulinh</strong> logged out.</div>
                        </div>
                        <!-- Tin nhắn cho September 23, 2024 -->
                        <div class="log-date">September 23, 2024</div>
                        <div class="log-message">
                            <div class="log-time">19:58</div>
                            <div class="log-event"><strong>tulinh</strong> logged in again.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">19:59</div>
                            <div class="log-event"><strong>tulinh</strong> changed settings.</div>
                        </div>
                    <div class="log-messages" id="logMessages">
                        <!-- Tin nhắn cho September 22, 2024 -->
                        <div class="log-date">September 22, 2024</div>
                        <div class="log-message">
                            <div class="log-time">19:55</div>
                            <div class="log-event"><strong>tulinh</strong> logged in.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">19:56</div>
                            <div class="log-event"><strong>tulinh</strong> updated profile.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">19:57</div>
                            <div class="log-event"><strong>tulinh</strong> logged out.</div>
                        </div>
                        <!-- Tin nhắn cho September 23, 2024 -->
                        <div class="log-date">September 23, 2024</div>
                        <div class="log-message">
                            <div class="log-time">19:58</div>
                            <div class="log-event"><strong>tulinh</strong> logged in again.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">19:59</div>
                            <div class="log-event"><strong>tulinh</strong> changed settings.</div>
                        </div>
                        <!-- Tin nhắn cho September 24, 2024 -->
                        <div class="log-date">September 24, 2024</div>
                        <div class="log-message">
                            <div class="log-time">10:30</div>
                            <div class="log-event"><strong>tulinh</strong> uploaded a new post.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">10:45</div>
                            <div class="log-event"><strong>tulinh</strong> commented on a post.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">11:00</div>
                            <div class="log-event"><strong>tulinh</strong> liked a post.</div>
                        </div>

                        <!-- Tin nhắn cho September 25, 2024 -->
                        <div class="log-date">September 25, 2024</div>
                        <div class="log-message">
                            <div class="log-time">09:00</div>
                            <div class="log-event"><strong>admin</strong> approved a new advertisement.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">10:15</div>
                            <div class="log-event"><strong>tulinh</strong> updated profile picture.</div>
                        </div>

                        <!-- Tin nhắn cho September 26, 2024 -->
                        <div class="log-date">September 26, 2024</div>
                        <div class="log-message">
                            <div class="log-time">15:00</div>
                            <div class="log-event"><strong>tulinh</strong> shared a recipe.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">16:00</div>
                            <div class="log-event"><strong>admin</strong> removed a post.</div>
                        </div>

                        <!-- Tin nhắn cho October 1, 2024 -->
                        <div class="log-date">October 1, 2024</div>
                        <div class="log-message">
                            <div class="log-time">14:30</div>
                            <div class="log-event"><strong>tulinh</strong> logged in.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">14:45</div>
                            <div class="log-event"><strong>tulinh</strong> checked notifications.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">15:00</div>
                            <div class="log-event"><strong>tulinh</strong> logged out.</div>
                        </div>

                        <!-- Tin nhắn cho October 2, 2024 -->
                        <div class="log-date">October 2, 2024</div>
                        <div class="log-message">
                            <div class="log-time">08:00</div>
                            <div class="log-event"><strong>admin</strong> created a new advertisement.</div>
                        </div>
                        <div class="log-message">
                            <div class="log-time">09:15</div>
                            <div class="log-event"><strong>tulinh</strong> edited a post.</div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script>
        // Hàm cuộn xuống đáy của phần chứa tin nhắn
        function scrollToBottom() {
            const logMessages = document.getElementById('logMessages');
            logMessages.scrollTop = logMessages.scrollHeight;
        }

        // Cuộn xuống khi trang được tải
        window.onload = scrollToBottom;
    </script>
</body>
</html>