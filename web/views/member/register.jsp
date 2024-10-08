<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>  
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>XTee Sign Up</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #feecb3; /* Màu nền trang web */
            display: flex;
            justify-content: center; /* Căn giữa */
            align-items: center;
            height: 100vh;
        }

        .container {
            display: flex;
            align-items: center; /* Để căn giữa logo và form */
            gap: 20px; /* Khoảng cách giữa logo và form */
        }

        .logo {
            text-align: center;
        }

        .logo-img {
            width: 450px; /* Kích thước logo */
            height: auto;
        }

        .signup-form {
            display: flex;
            flex-direction: column; /* Đặt các trường trong form theo cột */
            justify-content: center;
            background-color: #f1d57d; /* Màu nền của form */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 370px; /* Chiều rộng của form đăng ký */
        }

        .signup-form label {
            margin-bottom: 5px;
            font-size: 1.2em;
            color: #333;
        }

        .signup-form input, .signup-form select {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            background-color: #fbd872; /* Màu nền của trường nhập liệu */
            width: 100%; /* Đảm bảo các trường nhập liệu chiếm toàn bộ chiều rộng */
        }

        .signup-btn {
            background-color: #c8cfa0;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            margin-left: 95px; /* Dịch nút sang bên phải 95px */
            width: 45%; /* Đảm bảo nút đăng ký chiếm 45% chiều rộng */
            text-align: center; /* Căn giữa nội dung trong nút */
        }

        .signup-btn:hover {
            background-color: #e07522;
        }

        .login-account-btn {
            background-color: #c8cfa0;
            color: #333;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            margin: 0 auto;
            width: 70%; /* Đảm bảo nút đăng nhập chiếm toàn bộ chiều rộng */
        }

        .login-account-btn:hover {
            background-color: #b2c9a5;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">
            <img
                src="/XTee/assets/images/Logo_PNG_Ngang_1.png"
                alt="XTee Logo"
                class="logo-img"
            />
            <p>Come to us!</p>
        </div>
        <div class="signup-form">
            <form action="signup" method="post">
                <label for="fullname">Full Name</label>
                <input
                    type="text"
                    id="fullname"
                    name="fullname"
                    placeholder="Full Name"
                    required
                />
                <label for="username">User Name</label>
                <input
                    type="text"
                    id="username"
                    name="username"
                    placeholder="User Name"
                    required
                />
                
                <label for="phone">Phone Number</label>
                <input
                    type="tel"
                    id="phone"
                    name="phone"
                    placeholder="Phone Number"
                    required
                />
                
                <label for="birthday">Birthday</label>
                <input
                    type="date"
                    id="birthday"
                    name="birthday"
                    required
                />
                
                <label for="email">Email</label>
                <input
                    type="email"
                    id="email"
                    name="email"
                    placeholder="Email"
                    required
                />
                
                <label for="gender">Gender</label>
                <select id="gender" name="gender" required>
                    <option value="" disabled selected hidden>Gender: Male</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
                
                <label for="password">Password</label>
                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="Password"
                    required
                />
                
                <label for="repassword">Re-enter Password</label>
                <input
                    type="password"
                    id="repassword"
                    name="repassword"
                    placeholder="Re-enter Password"
                    required
                />
                
                <button type="submit" class="signup-btn">Sign Up</button>
            </form>
        </div>
    </div>
</body>
</html>
