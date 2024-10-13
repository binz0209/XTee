<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .header {
                overflow: hidden;
                background-color: #FFDA5A;
                display: flex; /* Sử dụng flexbox để căn chỉnh */
                align-items: center; /* Căn giữa theo chiều dọc */
                padding: 10px; /* Thêm khoảng cách xung quanh */
                border-bottom: 1px solid #000000; /* Optional: Add border between items */
            }
            .logo {
                margin-right: 20px; /* Thêm khoảng cách bên phải logo */
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
                justify-content: flex-end; /* Căn giữa theo chiều ngang */
                flex: 1; /* Chiếm toàn bộ không gian có sẵn */
            }

        </style>
    </head>
    <body>
        <div class="header">
            <img class="logo" src="../../assets/images/Logo_PNG_Ngang_1.png" width="5%" alt="alt"/>
            <div class="header-right">
                <a class="active" href="#home"><svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 24 24"><path fill="currentColor" d="M21 20a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.49a1 1 0 0 1 .386-.79l8-6.223a1 1 0 0 1 1.228 0l8 6.223a1 1 0 0 1 .386.79zm-2-1V9.978l-7-5.444l-7 5.444V19z"/></svg></a>
                <a href="#contact"><svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-width="2.5"><path stroke-linejoin="round" d="M4 18a4 4 0 0 1 4-4h8a4 4 0 0 1 4 4a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2Z"/><circle cx="12" cy="7" r="3"/></g></svg></a>
                <a href="#about"><svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 20 20"><path fill="currentColor" d="M11.078 0c.294 0 .557.183.656.457l.706 1.957q.379.094.654.192q.3.107.78.33l1.644-.87a.7.7 0 0 1 .832.131l1.446 1.495c.192.199.246.49.138.744l-.771 1.807q.191.352.308.604q.126.273.312.76l1.797.77c.27.115.437.385.419.674l-.132 2.075a.69.69 0 0 1-.46.605l-1.702.605q-.073.352-.154.606a9 9 0 0 1-.298.774l.855 1.89a.68.68 0 0 1-.168.793l-1.626 1.452a.7.7 0 0 1-.796.096l-1.676-.888a7 7 0 0 1-.81.367l-.732.274l-.65 1.8a.7.7 0 0 1-.64.457L9.11 20a.7.7 0 0 1-.669-.447l-.766-2.027a15 15 0 0 1-.776-.29a10 10 0 0 1-.618-.293l-1.9.812a.7.7 0 0 1-.755-.133L2.22 16.303a.68.68 0 0 1-.155-.783l.817-1.78a10 10 0 0 1-.302-.644a14 14 0 0 1-.3-.811L.49 11.74a.69.69 0 0 1-.49-.683l.07-1.921a.69.69 0 0 1 .392-.594L2.34 7.64q.13-.478.23-.748a9 9 0 0 1 .314-.712L2.07 4.46a.68.68 0 0 1 .15-.79l1.404-1.326a.7.7 0 0 1 .75-.138l1.898.784q.314-.209.572-.344q.307-.162.824-.346l.66-1.841A.7.7 0 0 1 8.984 0zm-.49 1.377H9.475L8.87 3.071a.7.7 0 0 1-.434.423c-.436.145-.751.27-.935.367q-.294.155-.74.47a.7.7 0 0 1-.673.074l-1.83-.755l-.713.674l.743 1.57a.68.68 0 0 1-.006.597c-.2.401-.335.697-.403.879a10 10 0 0 0-.27.922a.69.69 0 0 1-.37.45l-1.79.859l-.036.98l1.62.492c.215.065.385.23.456.442q.241.722.38 1.056a10 10 0 0 0 .404.827a.68.68 0 0 1 .019.606l-.751 1.638l.711.668l1.782-.762a.7.7 0 0 1 .603.024q.55.288.809.398c.175.073.51.195.996.361a.7.7 0 0 1 .424.41l.708 1.871l.926-.02l.597-1.654a.7.7 0 0 1 .409-.413l1.037-.388q.394-.145.951-.46a.7.7 0 0 1 .674-.008l1.577.835l.887-.791L15.856 14a.68.68 0 0 1-.001-.56c.182-.407.305-.714.367-.91q.093-.29.185-.825a.69.69 0 0 1 .451-.533l1.648-.585l.072-1.14l-1.62-.694a.7.7 0 0 1-.377-.394a15 15 0 0 0-.378-.944a11 11 0 0 0-.42-.794a.68.68 0 0 1-.035-.606l.725-1.7l-.764-.79l-1.488.788a.7.7 0 0 1-.633.013a11 11 0 0 0-.968-.426a7 7 0 0 0-.857-.23a.7.7 0 0 1-.508-.441zm-.564 4.264c2.435 0 4.41 1.953 4.41 4.361s-1.975 4.36-4.41 4.36s-4.41-1.952-4.41-4.36s1.974-4.36 4.41-4.36m0 1.378c-1.667 0-3.018 1.335-3.018 2.983s1.351 2.984 3.018 2.984s3.017-1.336 3.017-2.984s-1.35-2.983-3.017-2.983z"/></svg></a>
            </div>
        </div>
    </body>
</html>