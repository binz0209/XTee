<%-- 
    Document   : header_admin
    Created on : Oct 2, 2024, 11:27:31 PM
    Author     : bebet
--%>

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
            }
            .logo{
                padding-top: 12px;
                padding-left: 10px;
            }
            /* Style the header links */
            .header a {
                float: left;
                color: black;
                text-align: center;
                padding: 12px;
                text-decoration: none;
                font-size: 18px;
                line-height: 25px;
                border-radius: 4px;

            }

            /* Change the background color on mouse-over */
            .header a:hover {
                background-color: #ddd;
                color: black;
            }
            /*
                         Style the active/current link
                        .header a.active {
                            background-color: dodgerblue;
                            color: white;
                        }*/

            /* Float the link section to the right */
            .header-right {
                float: right;
                padding-right: 10px;
                display: flex;
                align-items: center;  /*Để giữ cho thanh tìm kiếm ở vị trí cố định */
            }
            .search-container {
                display: flex; /* Sử dụng Flexbox */
                align-items: center; /* Căn giữa theo chiều dọc */
                margin: 20px 0; /* Khoảng cách trên và dưới cho thanh tìm kiếm */
            }
            .search-icon {
                margin-right: 8px; /* Khoảng cách bên phải của icon */
            }
            .filter-icon {
                margin-left: 8px;
            }
            .search-bar {
                padding: 8px; /* Padding cho thanh tìm kiếm */
                border: 1px solid #dee2e6; /* Đường viền cho thanh tìm kiếm */
                border-radius: 30px; /* Bo góc 30 độ cho thanh tìm kiếm */
                width: 300px; /* Chiều rộng cho thanh tìm kiếm */
                background-color: #D9D9D9; /* Màu nền cho thanh tìm kiếm */
            }

        </style>
    </head>

    <body>
        <div class="header">
            <img class="logo" src="../../assets/images/Logo_PNG_Ngang_1.png" width="7%" alt="alt"/>
            <div class="header-right">
                <a href="#home"><svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 24 24"><path fill="currentColor" d="M21 20a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.49a1 1 0 0 1 .386-.79l8-6.223a1 1 0 0 1 1.228 0l8 6.223a1 1 0 0 1 .386.79zm-2-1V9.978l-7-5.444l-7 5.444V19z"/></svg></a>
                <a href="#contact"><svg xmlns="http://www.w3.org/2000/svg" width="28px"  viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-width="2.5"><path stroke-linejoin="round" d="M4 18a4 4 0 0 1 4-4h8a4 4 0 0 1 4 4a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2Z"/><circle cx="12" cy="7" r="3"/></g></svg></a>
                <a href="#friend"><svg xmlns="http://www.w3.org/2000/svg" width="28px"  viewBox="0 0 32 32"><path fill="currentColor" d="M25 10H7a3.003 3.003 0 0 0-3 3v6a2 2 0 0 0 2 2v7a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2V16h-2v12H8v-9H6v-6a1 1 0 0 1 1-1h18a1 1 0 0 1 1 1v6h-2v9h-4V16h-2v12a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2v-7a2 2 0 0 0 2-2v-6a3.003 3.003 0 0 0-3-3M10 9a4 4 0 1 1 4-4a4.004 4.004 0 0 1-4 4m0-6a2 2 0 1 0 2 2a2 2 0 0 0-2-2m12 6a4 4 0 1 1 4-4a4.004 4.004 0 0 1-4 4m0-6a2 2 0 1 0 2 2a2 2 0 0 0-2-2"/></svg></a>
                <a href="#message"><svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 24 24"><path fill="none" stroke="currentColor" stroke-width="1.5" d="M3 20.29V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H7.961a2 2 0 0 0-1.561.75l-2.331 2.914A.6.6 0 0 1 3 20.29Z"/></svg></a>
                <a href="#notification"><svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 24 24"><path fill="currentColor" d="M18 10a6 6 0 0 0-12 0v8h12zm2 8.667l.4.533a.5.5 0 0 1-.4.8H4a.5.5 0 0 1-.4-.8l.4-.533V10a8 8 0 1 1 16 0zM9.5 21h5a2.5 2.5 0 0 1-5 0"/></svg></a>
                <a href="#setting"><svg xmlns="http://www.w3.org/2000/svg" width="28px"  viewBox="0 0 20 20"><path fill="currentColor" d="M11.078 0c.294 0 .557.183.656.457l.706 1.957q.379.094.654.192q.3.107.78.33l1.644-.87a.7.7 0 0 1 .832.131l1.446 1.495c.192.199.246.49.138.744l-.771 1.807q.191.352.308.604q.126.273.312.76l1.797.77c.27.115.437.385.419.674l-.132 2.075a.69.69 0 0 1-.46.605l-1.702.605q-.073.352-.154.606a9 9 0 0 1-.298.774l.855 1.89a.68.68 0 0 1-.168.793l-1.626 1.452a.7.7 0 0 1-.796.096l-1.676-.888a7 7 0 0 1-.81.367l-.732.274l-.65 1.8a.7.7 0 0 1-.64.457L9.11 20a.7.7 0 0 1-.669-.447l-.766-2.027a15 15 0 0 1-.776-.29a10 10 0 0 1-.618-.293l-1.9.812a.7.7 0 0 1-.755-.133L2.22 16.303a.68.68 0 0 1-.155-.783l.817-1.78a10 10 0 0 1-.302-.644a14 14 0 0 1-.3-.811L.49 11.74a.69.69 0 0 1-.49-.683l.07-1.921a.69.69 0 0 1 .392-.594L2.34 7.64q.13-.478.23-.748a9 9 0 0 1 .314-.712L2.07 4.46a.68.68 0 0 1 .15-.79l1.404-1.326a.7.7 0 0 1 .75-.138l1.898.784q.314-.209.572-.344q.307-.162.824-.346l.66-1.841A.7.7 0 0 1 8.984 0zm-.49 1.377H9.475L8.87 3.071a.7.7 0 0 1-.434.423c-.436.145-.751.27-.935.367q-.294.155-.74.47a.7.7 0 0 1-.673.074l-1.83-.755l-.713.674l.743 1.57a.68.68 0 0 1-.006.597c-.2.401-.335.697-.403.879a10 10 0 0 0-.27.922a.69.69 0 0 1-.37.45l-1.79.859l-.036.98l1.62.492c.215.065.385.23.456.442q.241.722.38 1.056a10 10 0 0 0 .404.827a.68.68 0 0 1 .019.606l-.751 1.638l.711.668l1.782-.762a.7.7 0 0 1 .603.024q.55.288.809.398c.175.073.51.195.996.361a.7.7 0 0 1 .424.41l.708 1.871l.926-.02l.597-1.654a.7.7 0 0 1 .409-.413l1.037-.388q.394-.145.951-.46a.7.7 0 0 1 .674-.008l1.577.835l.887-.791L15.856 14a.68.68 0 0 1-.001-.56c.182-.407.305-.714.367-.91q.093-.29.185-.825a.69.69 0 0 1 .451-.533l1.648-.585l.072-1.14l-1.62-.694a.7.7 0 0 1-.377-.394a15 15 0 0 0-.378-.944a11 11 0 0 0-.42-.794a.68.68 0 0 1-.035-.606l.725-1.7l-.764-.79l-1.488.788a.7.7 0 0 1-.633.013a11 11 0 0 0-.968-.426a7 7 0 0 0-.857-.23a.7.7 0 0 1-.508-.441zm-.564 4.264c2.435 0 4.41 1.953 4.41 4.361s-1.975 4.36-4.41 4.36s-4.41-1.952-4.41-4.36s1.974-4.36 4.41-4.36m0 1.378c-1.667 0-3.018 1.335-3.018 2.983s1.351 2.984 3.018 2.984s3.017-1.336 3.017-2.984s-1.35-2.983-3.017-2.983"/></svg></a>
                <a href="#admin"><svg xmlns="http://www.w3.org/2000/svg" width="28px" viewBox="0 0 24 24"><path fill="currentColor" d="M12 14v2a6 6 0 0 0-6 6H4a8 8 0 0 1 8-8m0-1c-3.315 0-6-2.685-6-6s2.685-6 6-6s6 2.685 6 6s-2.685 6-6 6m0-2c2.21 0 4-1.79 4-4s-1.79-4-4-4s-4 1.79-4 4s1.79 4 4 4m9 6h1v5h-8v-5h1v-1a3 3 0 1 1 6 0zm-2 0v-1a1 1 0 1 0-2 0v1z"/></svg></a>
                <div class="search-container">
                    <path fill="currentColor" d="m19.6 21l-6.3-6.3q-.75.6-1.725.95T9.5 16q-2.725 0-4.612-1.888T3 9.5t1.888-4.612T9.5 3t4.613 1.888T16 9.5q0 1.1-.35 2.075T14.7 13.3l6.3 6.3zM9.5 14q1.875 0 3.188-1.312T14 9.5t-1.312-3.187T9.5 5T6.313 6.313T5 9.5t1.313 3.188T9.5 14"/>
                    </svg>
                    <input type="text" class="search-bar" placeholder="Search content...">
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><path fill="currentColor" d="m19.6 21l-6.3-6.3q-.75.6-1.725.95T9.5 16q-2.725 0-4.612-1.888T3 9.5t1.888-4.612T9.5 3t4.613 1.888T16 9.5q0 1.1-.35 2.075T14.7 13.3l6.3 6.3zM9.5 14q1.875 0 3.188-1.312T14 9.5t-1.312-3.187T9.5 5T6.313 6.313T5 9.5t1.313 3.188T9.5 14"/></svg>            </div>
        </div>
    </body>
</html>