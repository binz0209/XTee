<%-- 
    Document   : edit_profile
    Created on : Oct 8, 2024, 9:56:22 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Profile</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link href="assets/css/style.css" rel="stylesheet" />
        <style>
            /* CSS Styling */
            body {
                font-family: Arial, sans-serif;
                background-color: #f8f9fa;
                margin: 0;
                padding: 0;
            }

            h1 {
                font-size: 24px;
                margin-bottom: 20px;
                text-align: center;
            }

            .form-group {
                margin-bottom: 15px;
            }

            .form-group label {
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
            }

            .form-group input,
            .form-group select {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
            }

            .actions {
                text-align: right;
            }

            .actions button {
                padding: 10px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .actions .save {
                background-color: #28a745;
                color: white;
            }

            .actions .cancel {
                background-color: #dc3545;
                color: white;
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

            .profile-pic {
                width: 100px;
                height: 100px;
                border-radius: 50%;
                overflow: hidden;
            }

            .profile-pic img {
                width: 100%;
                height: auto;
            }

            .profile-info {
                flex-grow: 1;
                margin-left: 20px;
            }

            .profile-info h2 {
                margin: 0;
                font-size: 24px;
            }

            .profile-info span {
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

            .info-container {
                max-width: 1000px;
                margin: 20px auto;
                background: #fff;
                padding: 20px;
                border-radius: 10px;
                border: 2px solid #000000;
            }

            .info-row {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 15px 0;
                border-bottom: 1px solid #ddd;
            }

            .info-content {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                flex-direction: column;
            }

            .info-content span {
                font-size: 16px;
            }

            .info-row .edit-icon {
                background-color: #007bff;
                border: none;
                color: white;
                padding: 8px 12px;
                border-radius: 5px;
                cursor: pointer;
                align-items: flex-end;
            }

            .info-row .edit-icon:hover {
                background-color: #0056b3;
            }

            .info-row .icon {
                width: 24px;
                height: 24px;
                margin-right: 10px;
                color: gray;
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
            <!-- Gọi header -->
            <jsp:include page="../common/header_member.jsp" />
        </div>
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
                <a href="#">Pictures</a>
            </div>
        </div>

        <div class="info-container">
            <div class="info-row">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><path fill="currentColor" d="M6 7a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3A.5.5 0 0 1 6 7m.5 1.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1zM2 8a6 6 0 1 1 2.996 5.195l-2.338.78a.5.5 0 0 1-.639-.612l.712-2.491A6 6 0 0 1 2 8m6-5a5 5 0 0 0-4.3 7.552a.5.5 0 0 1 .05.393l-.509 1.78l1.658-.552a.5.5 0 0 1 .426.052A5 5 0 1 0 8 3"></path></svg>
                <div class="info-content" style="position: relative; left: -360px;">
                    <span>Nguyen Xuan Hung</span>
                    <span>FullName</span>
                </div>
                <button class="edit-outline" style="width: 24px; height: 24px;">Edit</button>
            </div>

            <div class="info-row">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M422 226.067H312v-96h-36A85.43 85.43 0 0 0 293.054 78.5c0-27.64-13.079-53.611-34.133-67.776l-8.932-6.01l-8.931 6.01C220 24.891 206.925 50.861 206.925 78.5a85.43 85.43 0 0 0 17.059 51.566H184v96H90a58.066 58.066 0 0 0-58 58V464a32.036 32.036 0 0 0 32 32h384a32.036 32.036 0 0 0 32-32V284.067a58.066 58.066 0 0 0-58-58M249.989 45.542c6.99 8.684 11.065 20.466 11.065 32.959s-4.075 24.276-11.065 32.959c-6.989-8.683-11.064-20.466-11.064-32.96S243 54.226 249.989 45.542M216 162.067h64v64h-64Zm-152 122a26.03 26.03 0 0 1 26-26h332a26.03 26.03 0 0 1 26 26v31.577l-21.6 9.531a33.28 33.28 0 0 1-26.809 0L362 308.588l-37.6 16.586a33.28 33.28 0 0 1-26.81 0L260 308.587l-37.6 16.586a33.28 33.28 0 0 1-26.81 0L158 308.588l-37.593 16.585a33.28 33.28 0 0 1-26.81 0L64 312.117ZM448 464H64V347.093l16.678 7.358a65.36 65.36 0 0 0 52.644 0L158 343.563l24.679 10.888a65.35 65.35 0 0 0 52.643 0L260 343.563l24.677 10.888a65.35 65.35 0 0 0 52.642 0L362 343.563l24.678 10.889a65.35 65.35 0 0 0 52.641 0l8.693-3.835L448.02 464Z"></path></svg><div class="info-content" style="position: relative; right: 400px;">
                    <span>9th April</span>
                    <span>Birthday</span>
                </div>
                <button class="edit-outline" style="width: 24px; height: 24px;">Edit</button>
            </div>

            <div class="info-row">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" d="M22 5.5H9c-1.1 0-2 .9-2 2v9a2 2 0 0 0 2 2h13c1.11 0 2-.89 2-2v-9a2 2 0 0 0-2-2m0 11H9V9.17l6.5 3.33L22 9.17zm-6.5-5.69L9 7.5h13zM5 16.5c0 .17.03.33.05.5H1c-.552 0-1-.45-1-1s.448-1 1-1h4zM3 7h2.05c-.02.17-.05.33-.05.5V9H3c-.55 0-1-.45-1-1s.45-1 1-1m-2 5c0-.55.45-1 1-1h3v2H2c-.55 0-1-.45-1-1"></path></svg>
                <div class="info-content" style="position: relative; right: 355px;">
                    <span>hungngu@gmail.com</span>
                    <span>Email</span>
                </div>
                <button class="edit-outline" style="width: 24px; height: 24px;">Edit</button>
            </div>

            <div class="info-row">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 256"><path fill="currentColor" d="m222.37 158.46l-47.11-21.11l-.13-.06a16 16 0 0 0-15.17 1.4a8 8 0 0 0-.75.56L134.87 160c-15.42-7.49-31.34-23.29-38.83-38.51l20.78-24.71c.2-.25.39-.5.57-.77a16 16 0 0 0 1.32-15.06v-.12L97.54 33.64a16 16 0 0 0-16.62-9.52A56.26 56.26 0 0 0 32 80c0 79.4 64.6 144 144 144a56.26 56.26 0 0 0 55.88-48.92a16 16 0 0 0-9.51-16.62M176 208A128.14 128.14 0 0 1 48 80a40.2 40.2 0 0 1 34.87-40a.6.6 0 0 0 0 .12l21 47l-20.67 24.74a6 6 0 0 0-.57.77a16 16 0 0 0-1 15.7c9.06 18.53 27.73 37.06 46.46 46.11a16 16 0 0 0 15.75-1.14a8 8 0 0 0 .74-.56L168.89 152l47 21.05h.11A40.21 40.21 0 0 1 176 208"></path></svg>
                <div class="info-content" style="position: relative; right: 385px;">
                    <span>0123456783</span>
                    <span>Phone</span>
                </div>
                <button class="edit-outline" style="width: 24px; height: 24px;">Edit</button>
            </div>

            <div class="info-row">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><path fill="currentColor" d="M90.937 63.235c-.185-1.43-.998-2.653-2.166-3.218L73.748 52.85l-6.353-3.03c2.775-1.747 5.028-4.445 6.503-7.695a20.9 20.9 0 0 0 1.866-8.625c0-1.753-.278-3.416-.666-5.023c-1.89-7.782-7.968-13.515-15.263-13.515c-6.494 0-12.011 4.557-14.48 11.047a20 20 0 0 0-.67 2.043c-.347 1.3-.613 2.64-.725 4.035q-.056.698-.057 1.413q0 .622.036 1.234a20.6 20.6 0 0 0 2.056 7.87c1.523 3.121 3.78 5.695 6.527 7.35l-6.084 2.833l-15.51 7.223c-1.011.474-1.761 1.447-2.074 2.62a4.8 4.8 0 0 0-.159 1.229v17.043c0 2.284 1.591 4.136 3.557 4.136H87.42c1.965 0 3.557-1.852 3.557-4.136V63.859q0-.317-.04-.624"></path><path fill="currentColor" d="m39.227 50.335l2.85-1.452c-3.165-4.206-5.065-9.555-5.065-15.383c0-4.041.917-7.85 2.531-11.21c-1.566-.772-3.238-1.212-4.983-1.212c-8.365 0-15.186 9.612-15.544 21.665H19v5.119c0 1.074.871 1.945 1.945 1.945h7.089c.081.051.159.108.24.157l-17.448 8.122c-1.087.511-1.804 1.739-1.804 3.111v13.771c0 1.846 1.289 3.341 2.875 3.341h11.531v-14.45c0-3.739 2.068-7.121 5.275-8.623z"></path></svg>
                <div class="info-content" style="position: relative; right: 405px;">
                    <span>Male</span>
                    <span>Gender</span>
                </div>
                <button class="edit-outline" style="width: 24px; height: 24px;">Edit</button>
            </div>
        </div>

    </body>
</html>
