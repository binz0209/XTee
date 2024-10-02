<%-- 
    Document   : PictureList
    Created on : Oct 2, 2024, 9:47:28 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Picture List</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link href="assets/css/style.css" rel="stylesheet"/>
        
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #ffffff;
                margin: 0;
                padding: 0;
            }

            header {
                background-color: #FFDA5A;
                display: flex;
                align-items: center;
                padding: 10px 20px;
                justify-content: space-between;
                height: 125px;
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
            }

            .post-container {
                background-color: #fff;
                padding: 15px;
                border-radius: 5px;
                margin: 20px;
                width: 75%;
                float: right;
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
            
            .pictures {
                display: flex;
                justify-content: space-around;
                margin-top: 20px;
            }

            .picture-box {
                width: 410px;
                height: 380px;
                background-color: lightgray;
                margin-top: 50px;
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
        </style>
    </head>
    <body>
        <div class="content-container">
            <header>
                <div class="logo">
                    <a href="#">
                        <img src="/XTee/assets/images/Logo_PNG_Ngang_1_Stroke.png" alt="XTEE Logo" style="height: 40px;">
                    </a>
                </div>
                <div class="search-container">
                    <svg class="search-icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                    <path fill="currentColor" d="m19.6 21l-6.3-6.3q-.75.6-1.725.95T9.5 16q-2.725 0-4.612-1.888T3 9.5t1.888-4.612T9.5 3t4.613 1.888T16 9.5q0 1.1-.35 2.075T14.7 13.3l6.3 6.3zM9.5 14q1.875 0 3.188-1.312T14 9.5t-1.312-3.187T9.5 5T6.313 6.313T5 9.5t1.313 3.188T9.5 14"/>
                    </svg>
                    <input type="text" class="search-bar" placeholder="Search users...">
                </div>
        </div>
    </header>

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
            <a href="#">Posts</a>
            <a href="#">Friends</a>
            <a href="#" class="active"><b>Pictures</b></a>
        </div>
            <div class="pictures" contenteditable="true" style="position: relative; left: -115px;">
                <div class="picture-box" style="position: relative; left: -139px;">
                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" style="width: 410px; height: 380px; object-fit: cover">
                </div>
                <div class="picture-box">
                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" style="width: 410px; height: 380px; object-fit: cover">
                </div>
                <div class="picture-box" style="position: relative; left: 139px;">
                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" style="width: 410px; height: 380px; object-fit: cover">
                </div>
            </div>
    </div>
    </body>
</html>
