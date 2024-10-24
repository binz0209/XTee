package controller;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Report;
import model.Post;
import service.ReportService;
import service.PostService;

@WebServlet(name = "AdminReportServlet", urlPatterns = {"/adminReport"})
public class AdminReportMngServlet extends HttpServlet {

    private ReportService reportService;
    private PostService postService;

    @Override
    public void init() {
        reportService = new ReportService(); // Tạo instance của ReportService
        postService = new PostService(); // Tạo instance của PostService
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Lấy danh sách các báo cáo và bài viết từ cơ sở dữ liệu
            List<Report> reports = reportService.getAllReports();
            List<Post> posts = postService.getAllPosts();

            // Lưu dữ liệu vào request attribute để có thể hiển thị trong JSP
            request.setAttribute("reports", reports);
            request.setAttribute("posts", posts);

            // Chuyển hướng đến trang admin_report.jsp để hiển thị dữ liệu
            request.getRequestDispatcher("/views/admin/admin_report.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error retrieving data.");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "AdminReportMngServlet handles report and post management for admin.";
    }
}
