<%-- 
    Document   : setting
    Created on : Oct 4, 2024, 10:25:24 AM
    Author     : bebet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Setting</title>
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

            .member-info{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                gap: 10px;
                width: 100%; /* Đảm bảo container chiếm toàn bộ chiều ngang */
                padding: 20px;
                box-sizing: border-box;
                /*                background-color: #fff;  Nền trắng để nổi bật 
                                border-radius: 15px;  Bo tròn các góc 
                                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);  Bóng đổ nhẹ tạo hiệu ứng nổi */

            }
            .profile-header {
                display: flex;
                align-items: center;
                margin-bottom: 50px;
                width: 50%;
                margin-left: 25%;
            }

            .profile-header .profile-pic {
                width: 70px;
                height: 70px;
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
                font-size: 22px;
            }
            .info{
                display: flex;
                width: 50%;
                align-items: center;
                justify-content: space-between;
                padding: 10px; /* Thêm padding cho mỗi phần tử bạn bè */
                box-sizing: border-box; /* Đảm bảo padding không làm tăng chiều rộng */
                border: 1px solid #ccc; /* Đóng khung cho mỗi phần tử */
                border-radius: 10px; /* Bo tròn các góc */
                background-color: #fff; /* Màu nền trắng cho các phần tử */
                transition: box-shadow 0.3s; /* Thêm hiệu ứng cho box-shadow */
                position:relative;
                display: grid;
                grid-template-columns: 3fr auto; /* Chia layout thành 3 cột */
                align-items: center; /* Canh giữa các phần tử theo chiều dọc */
                gap: 10px; /* Khoảng cách giữa các cột */
            }

            .logout-row{
                display: flex;
                justify-content: flex-end;
                width: 30%;

            }
            
            .btn-logout,.btn-change {
                background-color: #808080; /* Màu nền xám */
                color: white; /* Màu chữ trắng */
                padding:  3px 5px; /* Khoảng cách bên trong nút */
                border: none; /* Bỏ viền mặc định */
                border-radius: 5px; /* Bo tròn góc cho nút */
                cursor: pointer; /* Thay đổi con trỏ khi hover */
                font-size: 10px; /* Kích thước chữ */
                font-weight: bold; /* In đậm chữ */
                transition: background-color 0.3s, box-shadow 0.3s; /* Hiệu ứng khi hover */
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Bóng đổ cho nút */
            }

            .btn-logout,.btn-change:hover {
                background-color: #696969; /* Màu nền khi hover */
                box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2); /* Tăng bóng đổ khi hover */
            }

            .btn-logout,.btn-change:active {
                background-color: #585858; /* Màu nền khi bấm giữ */
                box-shadow: 0 3px 5px rgba(0, 0, 0, 0.2); /* Bóng đổ khi bấm giữ */
                transform: translateY(2px); /* Hiệu ứng nhấn xuống */
            }
            .btn-logout{
                padding:  10px 13px;
                background-color: #c82333;
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
                    <div class="container">
                        <div class="profile-header">
                            <div class="profile-pic">
                                <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="Profile Picture">
                            </div>
                            <div class="profile-info">
                                <h2>Nguyen Xuan Hung</h2>
                            </div>
                            <div class="logout-row">
                                <input type="submit" value="Log out" class="btn-logout"/>
                            </div>
                        </div>
                        <div class="member-info">
                            <div class="info">
                                <b>Birthday: </b>
                                <input type="submit" value="Change" class="btn-change"/>
                            </div>
                            <div class="info">
                                <b>Address: </b>
                                <input type="submit" value="Change" class="btn-change"/>
                            </div>
                            <div class="info">
                                <b>Phone Number: </b>
                                <input type="submit" value="Change" class="btn-change"/>
                            </div>
                            <div class="info">
                                <b>Email: </b>
                                <input type="submit" value="Change" class="btn-change"/>
                            </div>
                            <div class="info">
                                <b>Username: </b>
                                <input type="submit" value="Change" class="btn-change"/>
                            </div>
                            <div class="info">
                                <b>Password: </b>
                                <input type="submit" value="Change" class="btn-change"/>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
