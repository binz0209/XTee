package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "HomeServlet", urlPatterns = { "/home" })
public class HomeServlet extends HttpServlet {
    
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

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Chuyển tiếp đến trang home.jsp
            request.getRequestDispatcher("/views/member/homepage.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            // Xử lý lỗi và trả về mã lỗi 500
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error retrieving data.");
        }
    }
}
