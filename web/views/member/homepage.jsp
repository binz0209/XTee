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
            margin-left: 25%;
            margin-right: 25%;
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
                <!-- Include newpost -->
                <jsp:include page="../common/new_post.jsp" />
    
                <!-- Include post content -->
                <jsp:include page="../common/post_content.jsp" />
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
