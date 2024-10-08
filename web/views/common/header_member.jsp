<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header Member</title>
        <style>
            .header {
                overflow: hidden;
                background-color: #FFDA5A;
                display: flex; /* Sử dụng flexbox để căn chỉnh */
                align-items: center; /* Căn giữa theo chiều dọc */
                padding: 10px; /* Thêm khoảng cách xung quanh */
                border-bottom: 1px solid #000000; /* Optional: Add border between items */
            }

            /* Logo */
            .logo {
                margin-right: 20px;
            }

            /* Style the header links */
            .header a {
                color: black;
                text-align: center;
                padding: 5px;
                text-decoration: none;
                font-size: 18px;
                line-height: 25px;
                border-radius: 4px;
                margin-left: 10px; /* Thêm khoảng cách giữa các liên kết */
            }

            /* Change the background color on mouse-over */
            .header a:hover {
                background-color: #ddd;
                color: black;
            }

            /* Float the link section to the right */
            .header-right {
                margin-right: 20px;
                margin-left: auto; /* Đẩy các liên kết sang bên phải */
                display: flex; /* Sử dụng flexbox cho phần chứa các liên kết */
                justify-content: center; /* Căn giữa theo chiều ngang */
                flex: 1; /* Chiếm toàn bộ không gian có sẵn */
            }

            /* Thanh tìm kiếm */
            .search-container {
                display: flex;
                align-items: center;
                margin-left: 10px;
                justify-content: right;
            }

            .search-bar {
                padding: 8px;
                border: 1px solid #dee2e6;
                border-radius: 30px;
                width: 200px; /* Giảm chiều rộng */
                background-color: #D9D9D9;
            }

            .search-icon {
                margin-right: 8px;
            }
        </style>
    </head>

    <body>
        <div class="header">
            <img class="logo" src="../../assets/images/Logo_PNG_Ngang_1.png" width="5%" alt="alt"/>
            <div class="header-right">
                <a href="#home">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 24 24">
                    <path fill="currentColor" d="M21 20a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.49a1 1 0 0 1 .386-.79l8-6.223a1 1 0 0 1 1.228 0l8 6.223a1 1 0 0 1 .386.79zm-2-1V9.978l-7-5.444l-7 5.444V19z"/>
                    </svg>
                </a>
                <a href="#contact">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 24 24">
                    <g fill="none" stroke="currentColor" stroke-width="2.5">
                    <path stroke-linejoin="round" d="M4 18a4 4 0 0 1 4-4h8a4 4 0 0 1 4 4a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2Z"/>
                    <circle cx="12" cy="7" r="3"/>
                    </g>
                    </svg>
                </a>
                <a href="#friend">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 32 32">
                    <path fill="currentColor" d="M25 10H7a3.003 3.003 0 0 0-3 3v6a2 2 0 0 0 2 2v7a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2V16h-2v12H8v-9H6v-6a1 1 0 0 1 1-1h18a1 1 0 0 1 1 1v6h-2v9h-4V16h-2v12a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2v-7a2 2 0 0 0 2-2v-6a3.003 3.003 0 0 0-3-3M10 9a4 4 0 1 1 4-4a4.004 4.004 0 0 1-4 4m0-6a2 2 0 1 0 2 2a2 2 0 0 0-2-2m12 6a4 4 0 1 1 4-4a4.004 4.004 0 0 1-4 4m0-6a2 2 0 1 0 2 2a2 2 0 0 0-2-2"/>
                    </svg>
                </a>
                <a href="#message">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 24 24">
                    <path fill="none" stroke="currentColor" stroke-width="1.5" d="M3 20.29V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H7.961a2 2 0 0 0-1.561.75l-2.331 2.914A.6.6 0 0 1 3 20.29Z"/>
                    </svg>
                </a>
                <a href="#notification">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28px" height="28px" viewBox="0 0 24 24">
                    <path fill="currentColor" d="M22 20H2v-2h1v-6.969C3 6.043 7.03 2 12 2s9 4.043 9 9.031V18h1zM5 18h14v-6.969C19 7.148 15.866 4 12 4s-7 3.148-7 7.031zm4.5 3h5a2.5 2.5 0 0 1-5 0"/>
                    </svg>
                </a>
                <a href="#setting">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28px" height="28px" viewBox="0 0 1024 1024">
                    <path fill="currentColor" d="M600.704 64a32 32 0 0 1 30.464 22.208l35.2 109.376c14.784 7.232 28.928 15.36 42.432 24.512l112.384-24.192a32 32 0 0 1 34.432 15.36L944.32 364.8a32 32 0 0 1-4.032 37.504l-77.12 85.12a357 357 0 0 1 0 49.024l77.12 85.248a32 32 0 0 1 4.032 37.504l-88.704 153.6a32 32 0 0 1-34.432 15.296L708.8 803.904c-13.44 9.088-27.648 17.28-42.368 24.512l-35.264 109.376A32 32 0 0 1 600.704 960H423.296a32 32 0 0 1-30.464-22.208L357.696 828.48a352 352 0 0 1-42.56-24.64l-112.32 24.256a32 32 0 0 1-34.432-15.36L79.68 659.2a32 32 0 0 1 4.032-37.504l77.12-85.248a357 357 0 0 1 0-48.896l-77.12-85.248A32 32 0 0 1 79.68 364.8l88.704-153.6a32 32 0 0 1 34.432-15.296l112.32 24.256c13.568-9.152 27.776-17.408 42.56-24.64l35.2-109.312A32 32 0 0 1 423.232 64H600.64zm-23.424 64H446.72l-36.352 113.088l-24.512 11.968a294 294 0 0 0-34.816 20.096l-22.656 15.36l-116.224-25.088l-65.28 113.152l79.68 88.192l-1.92 27.136a293 293 0 0 0 0 40.192l1.92 27.136l-79.808 88.192l65.344 113.152l116.224-25.024l22.656 15.296a294 294 0 0 0 34.816 20.096l24.512 11.968L446.72 896h130.688l36.48-113.152l24.448-11.904a288 288 0 0 0 34.752-20.096l22.592-15.296l116.288 25.024l65.28-113.152l-79.744-88.192l1.92-27.136a293 293 0 0 0 0-40.256l-1.92-27.136l79.808-88.128l-65.344-113.152l-116.288 24.96l-22.592-15.232a288 288 0 0 0-34.752-20.096l-24.448-11.904L577.344 128zM512 320a192 192 0 1 1 0 384a192 192 0 0 1 0-384m0 64a128 128 0 1 0 0 256a128 128 0 0 0 0-256"/>
                    </svg>
                </a>
            </div>
            <!-- Thanh tìm kiếm -->
            <div class="search-container">
                <input type="text" class="search-bar" placeholder="Search content...">
                <svg class="search-icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                <path fill="currentColor" d="m19.6 21l-6.3-6.3q-.75.6-1.725.95T9.5 16q-2.725 0-4.612-1.888T3 9.5t1.888-4.612T9.5 3t4.613 1.888T16 9.5q0 1.1-.35 2.075T14.7 13.3l6.3 6.3zM9.5 14q1.875 0 3.188-1.312T14 9.5t-1.312-3.187T9.5 5T6.313 6.313T5 9.5t1.313 3.188T9.5 14"/>
                </svg>
            </div>
        </div>
    </body>
</html>
