<%-- 
    Document   : navbar_admin_dashboard
    Created on : Sep 30, 2024, 3:12:08?AM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <style>
        * {
            box-sizing: border-box; /* Ensure padding does not affect width */
        }
        body {
            display: flex; /* Use flexbox layout */
            margin: 0; /* Remove default margin */
            height: 100vh; /* Full height of the viewport */
        }
        .sidebar {
            position: relative; /* Allow absolute positioning of child elements */
            width: 16.67%; /* Width of the sidebar (1/6 of the screen) */
            background-color: #F1D57D; /* Set background color */
            padding: 0; /* Remove padding for the sidebar */
            height: 100%; /* Full height */
            display: flex; /* Use flex layout */
            flex-direction: column; /* Arrange items vertically */
        }
        .nav {
            list-style-type: none; /* Remove bullet points */
            padding: 0; /* Remove padding */
            margin: 0; /* Remove margin */
            flex-grow: 1; /* Allow the nav to grow */
        }
        .nav-item {
            border-bottom: 1px solid #000000; /* Optional: Add border between items */
        }
        .nav-link {
            color: #000; /* Change link color */
            display: flex; /* Use flex to center content */
            justify-content: center; /* Center content horizontally */
            align-items: center; /* Center content vertically */
            height: 50px; /* Set fixed height for links */
            font-size: 18px; /* Increase font size */
            text-align: center; /* Center text */
            background-color: #F0EAAC; /* Default background color */
            text-decoration: none; /* Remove underline */
        }
        .nav-link:hover,
        .nav-link.active { /* Apply styles for hover and active link */
            background-color: #CCE0AC; /* Background color on hover or active */
        }
        .nav-link.active {
            background-color: #CCE0AC; /* Màu nền xanh cho phần tử được chọn */
        }
        .logout-item {
            margin-top: auto; /* Push logout button to the bottom */
            border-top: 1px solid #CCE0AC; /* Optional: border above logout */
        }
        .logout-icon {
            margin-left: 8px; /* Space between text and icon */
            width: 20px; /* Size of the icon */
            height: 20px; /* Size of the icon */
        }
    </style>
</head>
<body>
    <nav class="navbar flex-column sidebar">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("admin_user.jsp") ? "active" : "" %>" href="./admin_user.jsp">User</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("admin_content.jsp") ? "active" : "" %>" href="./admin_content.jsp">Content</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("admin_report.jsp") ? "active" : "" %>" href="./adminReport">Report</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("admin_advertisement.jsp") ? "active" : "" %>" href="./adminAdvertisement">Advertisement</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("admin_audit_log.jsp") ? "active" : "" %>" href="./adminAuditLog">Audit/Log</a>
                <a class="nav-link <%= request.getRequestURI().endsWith("admin_report.jsp") ? "active" : "" %>" href="./admin_report.jsp">Report</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("admin_ads.jsp") ? "active" : "" %>" href="./admin_ads.jsp">Advertisement</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("admin_auditlog.jsp") ? "active" : "" %>" href="./admin_auditlog.jsp">Audit/Log</a>
            </li>
            <li class="nav-item logout-item">
                <a class="nav-link" href="../member/login.jsp">
                    Log Out
                    <svg class="logout-icon" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
                        <path fill="currentColor" d="m17 7l-1.41 1.41L18.17 11H8v2h10.17l-2.58 2.58L17 17l5-5M4 5h8V3H4c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h8v-2H4z"/>
                    </svg>
                </a>
            </li>
        </ul>
    </nav>
</body>
</html>
