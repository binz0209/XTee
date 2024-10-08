<%-- 
    Document   : homepage
    Created on : Oct 8, 2024, 1:41:39 PM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Food Sharing Page</title>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
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
            justify-content: center;
            align-items: flex-start;
            height: 100%;
        }

        .content-container {
            width: 50%;
            padding: 20px;
            border-radius: 8px;
            overflow-y: auto;
        }

        .post-section {
            font-size: 18px;
            margin-bottom: 20px;
            text-align: center;
        }

        .post {
            border: 1px solid #e0e0e0;
            border-radius: 15px;
            padding: 15px;
            margin-bottom: 15px;
            background-color: #D9D9D9;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .post-header {
            font-weight: bold;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }
        
        .post-header img {
            width: 40px;
            height: auto;
        }

        .post-content img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            max-height: 600px;
            object-fit: cover;
        }

        .new-post {
            margin-bottom: 20px;
            background-color: #D9D9D9;
            border-radius: 15px;
            padding: 20px;
            display: flex;
            align-items: center; /* Đảm bảo logo và text area căn giữa theo chiều dọc */
        }

        .new-post img {
            width: 50px;
            height: auto;
        }

        .new-post textarea {
            background-color: #EEEEEE;
            width: 100%;
            height: 50px;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 10px;
            resize: none;
            font-size: 16px;
            margin-left: 10px;
            flex-grow: 1; /* Đảm bảo text area giãn ra hết không gian còn lại */
        }
        .logo {
            border-radius: 50%;
            margin: 5px;
        }
        .post-action {
            align-items: center;
            display: flex;
            justify-content: space-between;
            margin-left: 50px;
            margin-right: 50px;
        }
        .post-action svg {
            cursor: pointer;
            margin: 20px;
        }
    </style>
</head>
<body>
    <div>
        <div>
            <!-- Gọi header -->
            <jsp:include page="../common/header_member.jsp" />
        </div>
        <div class="flex-container">
            <div class="content-container">
                <div class="new-post">
                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="User Logo" class="logo">
                    <textarea id="post-textarea" placeholder="What did you eat today?"></textarea>
                </div>
    
                <div class="post-section">
                    <div class="post">
                        <div class="post-header">
                            <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="User Logo" class="logo">
                            <a href="${pageContext.request.contextPath}/views/member/profile_post.jsp">NgXuanHung</a>
                        </div>
                        <div class="post-content">
                            <p>Yummy</p>
                            <img src="assets/images/your_image1.png" alt="Food Image" />
                            <div class="post-action">
                                <svg xmlns="http://www.w3.org/2000/svg" width="50px" height="50px" viewBox="0 0 48 48"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M15 8C8.925 8 4 12.925 4 19c0 11 13 21 20 23.326C31 40 44 30 44 19c0-6.075-4.925-11-11-11c-3.72 0-7.01 1.847-9 4.674A10.99 10.99 0 0 0 15 8"/></svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="50px" height="50px" viewBox="0 0 24 24"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 21a9 9 0 1 0-9-9c0 1.488.36 2.891 1 4.127L3 21l4.873-1c1.236.64 2.64 1 4.127 1"/></svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="50px" height="50px" viewBox="0 0 24 24"><path fill="currentColor" d="m21.707 11.293l-8-8A1 1 0 0 0 12 4v3.545A11.015 11.015 0 0 0 2 18.5V20a1 1 0 0 0 1.784.62a11.46 11.46 0 0 1 7.887-4.049c.05-.006.175-.016.329-.026V20a1 1 0 0 0 1.707.707l8-8a1 1 0 0 0 0-1.414M14 17.586V15.5a1 1 0 0 0-1-1c-.255 0-1.296.05-1.562.085a14 14 0 0 0-7.386 2.948A9.013 9.013 0 0 1 13 9.5a1 1 0 0 0 1-1V6.414L19.586 12Z"/></svg>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <!-- Include Popup -->
        <jsp:include page="../common/posting_popup.jsp" />
    </div>
    <script>
        // Hàm mở popup
        document.getElementById('create-post-button').addEventListener('click', function () {
            document.getElementById('post-popup').style.display = 'block';
            document.getElementById('posting-overlay').style.display = 'block';
        });

        // Hàm đóng popup
        function closePopup() {
            document.getElementById('post-popup').style.display = 'none';
            document.getElementById('posting-overlay').style.display = 'none';
        }

        // Hàm gửi bài đăng
        function submitPost() {
            const postContent = document.getElementById('post-textarea').value;

            // Gửi dữ liệu đến máy chủ (thực hiện một fetch hoặc AJAX để gửi dữ liệu ở đây)

            closePopup(); // Đóng popup sau khi gửi bài
        }
    </script>

</body>
</html>
