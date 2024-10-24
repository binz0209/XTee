package controller;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import service.UserService;

@WebServlet(name="AdminUserMngServlet", urlPatterns={"/adminUser"})
public class AdminUserMngServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        List<User> userList = null;

        // Lấy từ khóa tìm kiếm từ yêu cầu
        String keyword = request.getParameter("keyword");
        // Lấy thông số sắp xếp từ yêu cầu
        String orderBy = request.getParameter("orderBy");

        try {
            UserService userService = new UserService();
            if (keyword != null && !keyword.trim().isEmpty()) {
                // Tìm kiếm người dùng nếu có từ khóa
                userList = userService.searchUsers(keyword);
            } else {
                // Nếu không có từ khóa, lấy tất cả người dùng
                userList = userService.getAllUsers();
            }

            // Nếu có thông số sắp xếp, sắp xếp danh sách người dùng
            if (orderBy != null && !orderBy.trim().isEmpty()) {
                userList = userService.sortUsers(userList, orderBy);
            }

            request.setAttribute("userList", userList); // Đưa danh sách người dùng vào request
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Chuyển hướng đến trang admin_user.jsp
        request.getRequestDispatcher("/views/admin/admin_user.jsp").forward(request, response);
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
        return "Short description";
    }
}
