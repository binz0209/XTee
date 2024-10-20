<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Done</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #feecb3; /* Màu nền trang */
        }
        .container {
            margin-top: 50px; /* Khoảng cách từ trên xuống */
            padding: 20px;
            background-color: #f1d57d; /* Nền cho nội dung */
            border-radius: 8px; /* Bo góc cho khung */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Đổ bóng cho khung */
        }
        .header {
            text-align: center; /* Căn giữa tiêu đề */
            margin-bottom: 30px; /* Khoảng cách dưới cho tiêu đề */
        }
        .check-icon {
            text-align: center; /* Căn giữa logo */
            margin-top: 20px; /* Khoảng cách trên cho logo */
        }
        .btn {
            width: 100%; /* Đặt chiều rộng cho nút */
            margin-top: 20px; /* Khoảng cách trên cho nút */
            background-color: #ffda5a; /* Màu nền cho nút */
            border: none; /* Xóa viền */
        }
        .btn:hover {
            background-color: #ffc107; /* Thay đổi màu nền khi hover, có thể thay đổi thành màu bạn muốn */
            color: #fff; /* Thay đổi màu chữ khi hover */
        }
        svg {
            width: 100px; /* Đặt chiều rộng cho logo */
            height: 100px; /* Đặt chiều cao cho logo */
            color: #28a745; /* Màu sắc cho logo */
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="header">
            <h1>Payment Successful</h1>
            <p>Your payment has been processed successfully!</p>
        </div>

        <div class="check-icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
                <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-width="2">
                    <path d="m9 10l3.258 2.444a1 1 0 0 0 1.353-.142L20 5"/>
                    <path d="M21 12a9 9 0 1 1-6.67-8.693"/>
                </g>
            </svg>
            <p style="font-size: 1.5rem; margin-top: 10px;">Thank you!</p> <!-- Dòng chữ "Thank you!" -->
        </div>

        <div class="payment-details">
            <h5>Payment Details:</h5>
            <p>Name: <strong>NGUYEN XUAN HUNG</strong></p>
            <p>Account Number: <strong>5602063366</strong></p>
            <p>Bank: <strong>BIDV - CN HAI VAN</strong></p>
            <p>Amount: <strong>100.000 VND</strong></p>
        </div>

        <form action="${pageContext.request.contextPath}/views/member/homepage.jsp" method="post">
            <button class="btn btn-primary">Back to Home</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
