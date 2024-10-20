<%-- 
    Document   : homepage
    Created on : Oct 8, 2024, 1:41:39 PM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>XTEE</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Inter', sans-serif;
            background-color: #f8f9fa;
        }

        .flex-container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            height: 100%;
        }

        .content-container {
            
            margin-top: 70px;
            margin-left: 25%;
            margin-right: 25%;
            width: 50%;
            padding: 20px;
            border-radius: 8px;
            overflow-y: auto;
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
                
                <!-- Include Popup -->
                <jsp:include page="../common/posting_popup.jsp" />
            </div>
        </div>
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
