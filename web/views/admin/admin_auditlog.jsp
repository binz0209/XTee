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
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
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