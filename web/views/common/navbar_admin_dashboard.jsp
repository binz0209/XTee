<%-- 
    Document   : navbar_admin_dashboard
    Created on : Sep 30, 2024, 3:12:08?AM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>
    <nav class="navbar flex-column sidebar">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("/admin_user.jsp") ? "active" : "" %>" href="${pageContext.request.contextPath}/adminUser">User</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("/admin_content.jsp") ? "active" : "" %>" href="${pageContext.request.contextPath}/adminContent">Content</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("/admin_report.jsp") ? "active" : "" %>" href="${pageContext.request.contextPath}/adminReport">Report</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("/admin_ads.jsp") ? "active" : "" %>" href="${pageContext.request.contextPath}/adminAdvertisement">Advertisement</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= request.getRequestURI().endsWith("/admin_auditlog.jsp") ? "active" : "" %>" href="${pageContext.request.contextPath}/adminAuditLog">Audit/Log</a>
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
