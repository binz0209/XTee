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
</head>
<body>
    <nav class="navbar navbar-light bg-light flex-column">
        <h5 class="navbar-brand">Admin Menu</h5>
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link" href="admin_user.jsp">User Management</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="admin_content.jsp">Content Management</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="admin_report.jsp">Report Management</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="admin_advertisement.jsp">Advertisement Management</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="admin_audit_log.jsp">Audit Log</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Log Out</a>
            </li>
        </ul>
    </nav>
</body>
</html>
