<%-- 
    Document   : login
    Created on : Oct 1, 2024, 1:42:38 AM
    Author     : TuLinh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>XTee Login</title>
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

      .login-form {
        display: flex;
        flex-direction: column; /* Đặt các trường trong form theo cột */
        justify-content: center;
        background-color: #f1d57d; /* Màu nền của form */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 370px; /* Chiều rộng của form đăng nhập */
      }

      .login-form label {
        margin-bottom: 5px;
        font-size: 1.2em;
        color: #333;
      }

      .login-form input {
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1em;
        background-color: #fbd872; /* Màu nền của trường nhập liệu */
        width: 100%; /* Đảm bảo các trường nhập liệu chiếm toàn bộ chiều rộng */
      }

      .forgot-password {
        text-align: right;
        margin-bottom: 15px;
        font-size: 0.9em;
      }

      .forgot-password a {
        color: #333;
        text-decoration: none;
      }

      .forgot-password a:hover {
        text-decoration: underline;
      }

      .login-btn {
        background-color: #f08728;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 1.2em;
        cursor: pointer;
        margin-left : 95px ; /* Căn giữa nút */
        width: 45%; /* Đảm bảo nút đăng nhập chiếm toàn bộ chiều rộng */
        text-align: center; /* Căn giữa nội dung trong nút */
      }

      .login-btn:hover {
        background-color: #e07522;
      }

      hr {
        margin: 15px 0;
        border: 1px solid #ccc;
      }

      .create-account-btn {
        background-color: #c8cfa0;
        color: #333;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 1.2em;
        cursor: pointer;
        margin: 0 auto;
        width: 70%; /* Đảm bảo nút tạo tài khoản mới chiếm toàn bộ chiều rộng */
      }

      .create-account-btn:hover {
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
      <div class="login-form">
        <form action="login" method="post">
          <input
            type="text"
            id="username"
            name="username"
            placeholder="User Name"
            required
          />
          <input
            type="password"
            id="password"
            name="password"
            placeholder="Password"
            required
          />
          <div class="forgot-password">
            <a href="#">Forgotten password?</a>
          </div>
          <button type="submit" class="login-btn">Login</button>
        </form>
        <hr />
        <button
          class="create-account-btn"
          onclick="window.location.href='register.jsp'"
        >
          Create new account
        </button>
      </div>
    </div>
  </body>
</html>