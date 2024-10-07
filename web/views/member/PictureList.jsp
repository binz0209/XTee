<%-- Document : PictureList Created on : Oct 2, 2024, 9:47:28 PM Author : ACER --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Picture List</title>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
            <link href="assets/css/style.css" rel="stylesheet" />

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

                .logo {
                    font-size: 24px;
                    font-weight: bold;
                    color: #ff3f34;
                }

                table {
                    width: 82.5%;
                    /* Giảm chiều rộng của bảng xuống 80% */
                    height: 7%;
                    margin: 0 auto;
                    /* Căn giữa bảng trong trang */
                    border-collapse: collapse;
                    /* Hợp nhất các đường viền */
                    background-color: #ffffff;
                    /* Màu nền bảng */
                    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    /* Thêm bóng cho bảng */
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
                                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg"
                                        alt="Profile Picture">
                                </div>
                                <div class="profile-info">
                                    <h2>Nguyen Xuan Hung</h2>
                                    <span><b>4</b> posts &nbsp;&nbsp;&nbsp; <b>3</b> friends</span>
                                </div>
                                <div class="actions">
                                    <button class="edit-profile">
                                        <span class="edit-outline" style="position: relative; left: -6px; top: 2px;"></span>Edit
                                        Profile
                                    </button>
                                    <button class="ads-service">
                                        <span class="speaker" style="position: relative; left: -6px; top: 2px;"></span>Ads
                                        service
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
                                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg"
                                        style="width: 410px; height: 380px; object-fit: cover">
                                </div>
                                <div class="picture-box">
                                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg"
                                        style="width: 410px; height: 380px; object-fit: cover">
                                </div>
                                <div class="picture-box" style="position: relative; left: 139px;">
                                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg"
                                        style="width: 410px; height: 380px; object-fit: cover">
                                </div>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </body>

        </html>