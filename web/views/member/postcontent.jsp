<%-- 
    Document   : postcontent
    Created on : Oct 4, 2024, 8:08:15 PM
    Author     : bebet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
                margin-left: 30%;
            }

            .profile-header .profile-pic {
                width: 50px;
                height: 50px;
                border-radius: 50%;
                overflow: hidden;
            }

            .profile-header .profile-pic img {
                width: 100%;
                height: auto;
            }

            .profile-header .profile-info {
                flex-grow: 1;
                margin-left: 15px;
            }

            .profile-header .profile-info h2 {
                margin: 0;
                font-size: 15px;
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
                margin: 0 50px;
                text-decoration: none;
                color: black;
                font-size: 30px;
                border-bottom: 2px solid transparent;
                padding-bottom: 5px;
            }

            .tabs a.active {
                border-bottom: 2px solid black;
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
            }

            .post img {
                width: 100%;
                border-radius: 10px;
            }

            .pictures {
                display: flex;
                justify-content: space-around;

            }

            .picture-box {
                width: 410px;
                height: 380px;
                background-color: lightgray;
                margin-top: 20px;
            }
            .comment{
                margin-left: 35%;
            }


        </style>
    </head>
    <body>

        <div class="post">
            <div class="post-content">
                <div class="profile-header">
                    <div class="profile-pic">
                        <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="Profile Picture">
                    </div>
                    <div class="profile-info">
                        <h2>Nguyen Xuan Hung</h2>
                    </div>
                </div>
                <div class="pictures" contenteditable="true" style="position: relative;">
                    <div class="picture-box" style="position: relative; ">
                        <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" style="width: 410px; height: 380px; object-fit: cover">
                    </div>
                </div>
            </div>
            <div class="tabs">
                <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 48 48"><path fill="#f44336" d="M34 9c-4.2 0-7.9 2.1-10 5.4C21.9 11.1 18.2 9 14 9C7.4 9 2 14.4 2 21c0 11.9 22 24 22 24s22-12 22-24c0-6.6-5.4-12-12-12"/></svg></a>
                <a href="#" class="active"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><path fill="currentColor" d="M5.821 4.91c3.899-2.765 9.468-2.539 13.073.535c3.667 3.129 4.168 8.238 1.152 11.898c-2.841 3.447-7.965 4.583-12.231 2.805l-.233-.101l-4.374.931l-.04.006l-.035.007h-.018l-.022.005h-.038L3.022 21l-.021-.001l-.023.001l-.033-.003H2.91l-.022-.004l-.022-.002l-.035-.007l-.034-.005l-.016-.004l-.024-.005l-.049-.016l-.024-.005l-.011-.005l-.022-.007l-.045-.02l-.03-.012l-.011-.006l-.014-.006l-.031-.018l-.045-.024l-.016-.011l-.037-.026l-.04-.027l-.002-.004l-.013-.009l-.043-.04l-.025-.02l-.006-.007l-.056-.062l-.013-.014l-.011-.014l-.039-.056l-.014-.019l-.005-.01l-.042-.073l-.007-.012l-.004-.008l-.007-.012l-.014-.038l-.02-.042l-.004-.016l-.004-.01l-.017-.061l-.007-.018l-.002-.015l-.005-.019l-.005-.033l-.008-.042l-.002-.031l-.003-.01v-.016L2 20.022l.001-.036l.001-.023l.002-.053l.004-.025v-.019l.008-.035l.005-.034l.005-.02l.004-.02l.018-.06l.003-.013l1.15-3.45l-.022-.037C.969 12.45 1.97 7.806 5.592 5.078z"/></svg></a>
                <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m20 12l-6.4-7v3.5C10.4 8.5 4 10.6 4 19c0-1.167 1.92-3.5 9.6-3.5V19z"/></svg></a>
            </div>
            <div class="post-comment">
                <div class="post-comment-content">
                    <div class="profile-header">
                        <div class="profile-pic">
                            <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="Profile Picture">
                        </div>
                        <div class="profile-info">
                            <h2>Nguyen Xuan Hung</h2>
                        </div>
                    </div>
                    <div class="comment">
                        It's so good
                    </div>
                </div>

                <div class="post-comment-showmore">
                    <div class="time">
                        2 minitues ago
                    </div>
                    <div class="showmore">
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
