package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Report;
import model.User;
import utils.DBConnection;

public class ReportDAO {

    // Hàm tạo một báo cáo mới
    public boolean createReport(Report report) throws Exception {
        String sql = "INSERT INTO Reports (postId, userId, reportReason, reportDate, status) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, report.getPostId());
            ps.setInt(2, report.getUserId());
            ps.setString(3, report.getReportReason());
            ps.setDate(4, new java.sql.Date(report.getReportDate().getTime()));
            ps.setString(5, report.getStatus());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while creating report: " + e.getMessage(), e);
        }
    }

    // Hàm lấy tất cả báo cáo
    public List<Report> getAllReports() throws Exception {
        List<Report> reports = new ArrayList<>();
        String sql = "SELECT * FROM Reports ORDER BY reportDate DESC";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Report report = new Report();
                report.setReportId(rs.getInt("reportId"));
                report.setPostId(rs.getInt("postId"));
                report.setUserId(rs.getInt("userId"));
                report.setReportReason(rs.getString("reportReason"));
                report.setReportDate(rs.getDate("reportDate"));
                report.setStatus(rs.getString("status"));

                reports.add(report);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching reports: " + e.getMessage(), e);
        }

        return reports;
    }

    // Hàm xóa một báo cáo
    public boolean deleteReport(int reportId) throws Exception {
        String sql = "DELETE FROM Reports WHERE reportId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, reportId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while deleting report: " + e.getMessage(), e);
        }
    }

    // Hàm cập nhật trạng thái của một báo cáo
    public boolean updateReportStatus(int reportId, String status) throws Exception {
        String sql = "UPDATE Reports SET status = ? WHERE reportId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, status);
            ps.setInt(2, reportId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while updating report status: " + e.getMessage(), e);
        }
    }
    
}
