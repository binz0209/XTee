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
        <title>JSP Page</title>
        <style>
            .body {
                font-family: Arial, sans-serif;
                background-color: #ffffff;
                margin: 0;
                padding: 0;
            }


            .container{
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
            .show-more{
                background-image: url("https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/_xO7nhjX4UX.png");
                background-position: 0px -100px;
                background-size: auto;
                width: 24px;
                height: 24px;
                background-repeat: no-repeat;
                display: inline-block;
            }
            .logout-row{
                display: flex;
                justify-content: flex-end;
                width: 50%;

            }
            .btn-logout{
                background-color: red; /* Màu nền của button */
                color: white; /* Màu chữ */
                padding: 10px 20px;
                border: none;
                border-radius: 5px; /* Làm bo góc cho button */
                cursor: pointer;
            }

        </style>
    </head>
    <body>

        <div class="container">
            <div class="profile-header">
                <div class="profile-pic">
                    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="Profile Picture">
                </div>
                <div class="profile-info">
                    <h2>Nguyen Xuan Hung</h2>
                </div>
            </div>
            <div class="info">
                <b>Birthday: </b>
                <i class="show-more"></i>
            </div>
            <div class="info">
                <b>Address: </b>
                <i class="show-more"></i>
            </div>
            <div class="info">
                <b>Phone Number: </b>
                <i class="show-more"></i>
            </div>
            <div class="info">
                <b>Email: </b>
                <i class="show-more"></i>
            </div>
            <div class="info">
                <b>Username: </b>
                <i class="show-more"></i>
            </div>
            <div class="info">
                <b>Password: </b>
                <i class="show-more"></i>
            </div>
            <div class="logout-row">
                <input type="submit" value="Log out" class="btn-logout"/>
            </div>
        </div>


    </body>
</html>
