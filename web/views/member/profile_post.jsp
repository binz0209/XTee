<%-- 
    Document   : ProfilePost
    Created on : Oct 1, 2024, 10:57:23 PM
    Author     : ACER
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
        
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
                margin-top: 70px;
                flex: 1;
                padding: 20px;
                overflow-y: auto;
            }

            .logo {
                font-size: 24px;
                font-weight: bold;
                color: #ff3f34;
            }

            table {
                width: 82.5%; /* Giảm chiều rộng của bảng xuống 80% */
                height: 7%;
                margin: 0 auto; /* Căn giữa bảng trong trang */
                border-collapse: collapse; /* Hợp nhất các đường viền */
                background-color: #ffffff; /* Màu nền bảng */
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Thêm bóng cho bảng */
            }

            .profile-container {
                max-width: 1000px;
                margin: 20px auto;
                background: #fff;
                padding: 20px;
                border-radius: 10px;
                border: 2px solid #000000;
            }

            .profile-header {
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            .profile-header .profile-pic {
                width: 100px;
                height: 100px;
                border-radius: 50%;
                overflow: hidden;
            }

            .profile-header .profile-pic img {
                width: 100%;
                height: auto;
            }

            .profile-header .profile-info {
                flex-grow: 1;
                margin-left: 20px;
            }

            .profile-header .profile-info h2 {
                margin: 0;
                font-size: 24px;
            }

            .profile-header .profile-info span {
                display: block;
                font-size: 16px;
                color: gray;
            }

            .profile-header .actions button {
                margin-right: 10px;
                padding: 10px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .edit-profile {
                background-color: #ccc;
            }

            .ads-service {
                background-color: #f9d300;
                color: black;
            }

            .tabs {
                margin: 20px 0;
                display: flex;
                justify-content: center;
            }

            .tabs a {
                margin: 0 10px;
                text-decoration: none;
                color: black;
                font-size: 18px;
                border-bottom: 2px solid transparent;
                padding-bottom: 5px;
            }

            .tabs a.active {
                border-bottom: 2px solid black;
            }

            .intro-section {
                background-color: #f2f2f2;
                padding: 15px;
                border-radius: 5px;
                margin: 0;
                width: 200px;
                float: left;
                border: 2px solid #000000;
            }

            .post-container {
                background-color: #fff;
                padding: 15px;
                border-radius: 5px;
                margin: 20px;
                max-width: 1000px;
                float: right;
                border: 2px solid #000000;
            }

            .post {
                margin-bottom: 20px;
            }

            .post textarea {
                width: 100%;
                padding: 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
                margin-bottom: 10px;
            }

            .post img {
                width: 100%;
                border-radius: 10px;
            }

            .edit-outline {
                display: inline-block;
                width: 1em;
                height: 1em;
                --svg: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='%23000' d='M5 19h1.425L16.2 9.225L14.775 7.8L5 17.575zm-2 2v-4.25L16.2 3.575q.3-.275.663-.425t.762-.15t.775.15t.65.45L20.425 5q.3.275.438.65T21 6.4q0 .4-.137.763t-.438.662L7.25 21zM19 6.4L17.6 5zm-3.525 2.125l-.7-.725L16.2 9.225z'/%3E%3C/svg%3E");
                background-color: currentColor;
                -webkit-mask-image: var(--svg);
                mask-image: var(--svg);
                -webkit-mask-repeat: no-repeat;
                mask-repeat: no-repeat;
                -webkit-mask-size: 100% 100%;
                mask-size: 100% 100%;
            }

            .speaker {
                display: inline-block;
                width: 1em;
                height: 1em;
                --svg: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='%23000' d='M19 8v6c1.7 0 3-1.3 3-3s-1.3-3-3-3m-8-1H4c-1.1 0-2 .9-2 2v4c0 1.1.9 2 2 2h1v3c0 1.1.9 2 2 2h2v-5h2l4 4h2V3h-2z'/%3E%3C/svg%3E");
                background-color: currentColor;
                -webkit-mask-image: var(--svg);
                mask-image: var(--svg);
                -webkit-mask-repeat: no-repeat;
                mask-repeat: no-repeat;
                -webkit-mask-size: 100% 100%;
                mask-size: 100% 100%;
            }

            .ic-home {
                display: inline-block;
                width: 1.5em;
                height: 1.5em;
                --svg: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='%23000' d='m12 5.69l5 4.5V18h-2v-6H9v6H7v-7.81zM12 3L2 12h3v8h6v-6h2v6h6v-8h3z'/%3E%3C/svg%3E");
                background-color: currentColor;
                -webkit-mask-image: var(--svg);
                mask-image: var(--svg);
                -webkit-mask-repeat: no-repeat;
                mask-repeat: no-repeat;
                -webkit-mask-size: 100% 100%;
                mask-size: 100% 100%;
            }

            .ic-cake {
                display: inline-block;
                width: 1.5em;
                height: 1.5em;
                --svg: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='%23000' d='M12 6a2 2 0 0 0 2-2c0-.38-.1-.73-.29-1.03L12 0l-1.71 2.97c-.19.3-.29.65-.29 1.03c0 1.1.9 2 2 2m6 3h-5V7h-2v2H6c-1.66 0-3 1.34-3 3v9c0 .55.45 1 1 1h16c.55 0 1-.45 1-1v-9c0-1.66-1.34-3-3-3m1 11H5v-3c.9-.01 1.76-.37 2.4-1.01l1.09-1.07l1.07 1.07c1.31 1.31 3.59 1.3 4.89 0l1.08-1.07l1.07 1.07c.64.64 1.5 1 2.4 1.01zm0-4.5c-.51-.01-.99-.2-1.35-.57l-2.13-2.13l-2.14 2.13c-.74.74-2.03.74-2.77 0L8.48 12.8l-2.14 2.13c-.35.36-.83.56-1.34.57V12c0-.55.45-1 1-1h12c.55 0 1 .45 1 1z'/%3E%3C/svg%3E");
                background-color: currentColor;
                -webkit-mask-image: var(--svg);
                mask-image: var(--svg);
                -webkit-mask-repeat: no-repeat;
                mask-repeat: no-repeat;
                -webkit-mask-size: 100% 100%;
                mask-size: 100% 100%;
            }

            .ic-gender {
                display: inline-block;
                width: 1.5em;
                height: 1.5em;
                --svg: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Cpath fill='%23000' d='M90.937 63.235c-.185-1.43-.998-2.653-2.166-3.218L73.748 52.85l-6.353-3.03c2.775-1.747 5.028-4.445 6.503-7.695a20.9 20.9 0 0 0 1.866-8.625c0-1.753-.278-3.416-.666-5.023c-1.89-7.782-7.968-13.515-15.263-13.515c-6.494 0-12.011 4.557-14.48 11.047a20 20 0 0 0-.67 2.043c-.347 1.3-.613 2.64-.725 4.035q-.056.698-.057 1.413q0 .622.036 1.234a20.6 20.6 0 0 0 2.056 7.87c1.523 3.121 3.78 5.695 6.527 7.35l-6.084 2.833l-15.51 7.223c-1.011.474-1.761 1.447-2.074 2.62a4.8 4.8 0 0 0-.159 1.229v17.043c0 2.284 1.591 4.136 3.557 4.136H87.42c1.965 0 3.557-1.852 3.557-4.136V63.859q0-.317-.04-.624'/%3E%3Cpath fill='%23000' d='m39.227 50.335l2.85-1.452c-3.165-4.206-5.065-9.555-5.065-15.383c0-4.041.917-7.85 2.531-11.21c-1.566-.772-3.238-1.212-4.983-1.212c-8.365 0-15.186 9.612-15.544 21.665H19v5.119c0 1.074.871 1.945 1.945 1.945h7.089c.081.051.159.108.24.157l-17.448 8.122c-1.087.511-1.804 1.739-1.804 3.111v13.771c0 1.846 1.289 3.341 2.875 3.341h11.531v-14.45c0-3.739 2.068-7.121 5.275-8.623z'/%3E%3C/svg%3E");
                background-color: currentColor;
                -webkit-mask-image: var(--svg);
                mask-image: var(--svg);
                -webkit-mask-repeat: no-repeat;
                mask-repeat: no-repeat;
                -webkit-mask-size: 100% 100%;
                mask-size: 100% 100%;
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
                    <div class="profile-container">
                        <div class="profile-header">
                            <div class="profile-pic">
                                <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="Profile Picture">
                            </div>
                            <div class="profile-info">
                                <h2>Nguyen Xuan Hung</h2>
                                <span><b>4</b> posts &nbsp;&nbsp;&nbsp; <b>3</b> friends</span>
                            </div>
                            <div class="actions">
                                <button class="edit-profile">
                                    <span class="edit-outline" style="position: relative; left: -6px; top: 2px;"></span>Edit Profile
                                </button>
                                <button class="ads-service">
                                    <span class="speaker" style="position: relative; left: -6px; top: 2px;"></span>Ads service
                                </button>
                            </div>
                        </div>

                        <div class="tabs">
                            <a href="./profile_post.jsp" class="active"><b>Posts</b></a>
                            <a href="./friends.jsp">Friends</a>
                            <a href="./picture_list.jsp">Pictures</a>
                        </div>
                    </div>

                    <div class="container">
                        <div class="intro-section" style="position: relative; left: 79px; top: 1px;">
                            <h3>INTRODUCTION</h3>
                            <p style="position: relative; left: 30px; top: 5px;">
                                <i class="fa fa-home"></i>
                                <span class="ic-home" style="position: relative; left: -20px; top: -5px " contenteditable="true"></span>Live in Da Nang</p>
                            <p style="position: relative; left: 30px;">
                                <i class="fa fa-birthday-cake"></i>
                                <span class="ic-cake" style="position: relative; left: -20px; top: 5px"></span>6/9/2010</p>
                            <p style="position: relative; left: 30px;">
                                <i class="fa fa-male"></i>
                                <span class="ic-gender" style="position: relative; left: -20px; top: 5px"></span>Male</p>
                        </div>

                        <!-- Post Section -->
                        <div class="post-container" style="position: relative; left: -392px; top: -9px; width: 1095px; transition: none;">
                            <div class="posting" style="display: flex; align-items: center; padding: 15px; background-color: rgb(240, 240, 240); border-radius: 10px; border: 1px solid rgb(204, 204, 204); width: 900px; position: relative; left: 35px; top: 4px;">
                                <!-- Avatar -->
                                <div class="avatar" style="flex-shrink: 0;">
                                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="Avatar" style="width: 50px; height: 50px; border-radius: 50%;">
                                </div>
                                <!-- Textarea -->
                                <textarea placeholder="What did you eat today?" class="form-control" style="margin-left: 10px; background-color: #e5e5e5; border: none; padding: 10px; border-radius: 20px; width: 100%; height: 50px; resize: none;"></textarea>
                            </div>

                            <div class="post-profile" style="background-color: rgb(240, 240, 240); border-radius: 10px; padding: 15px; border: 1px solid rgb(204, 204, 204); width: 900px; margin-top: 30px; position: relative; left: 35px; top: 4px;">
                                <!-- Phần bài đăng -->
                                <div style="display: flex; align-items: center; margin-bottom: 10px;">
                                    <!-- Avatar -->
                                    <div class="avatar" style="flex-shrink: 0;">
                                        <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="Avatar" style="width: 40px; height: 40px; border-radius: 50%;">
                                    </div>
                                    <!-- Tên người đăng và nội dung -->
                                    <div style="margin-left: 10px;">
                                        <p style="margin: 0; font-weight: bold; color: #000;">NgXuanHung</p>
                                        <p style="margin: 0; color: #555;">Yummy</p>
                                    </div>
                                </div>
                                <!-- Hình ảnh của bài đăng -->
                                <img src="${pageContext.request.contextPath}/assets/images/food.jpg" alt="Food" class="img-fluid" style="width: 100%; border-radius: 10px;">
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
