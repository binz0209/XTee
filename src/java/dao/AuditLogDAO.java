package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.AuditLog;
import utils.DBConnection;

public class AuditLogDAO {

    // Hàm lấy tất cả bản ghi kiểm tra từ database
    public List<AuditLog> getAllAuditLogs() throws Exception {
        List<AuditLog> logs = new ArrayList<>();
        String sql = "SELECT * FROM AuditLogs"; // Thay đổi tên bảng nếu cần

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                AuditLog log = new AuditLog();
                log.setLogId(rs.getInt("logId"));
                log.setUserId(rs.getInt("userId"));
                log.setActionType(rs.getString("actionType"));
                log.setTargetPostId(rs.getInt("targetPostId"));
                log.setActionTimestamp(rs.getTimestamp("actionTimestamp")); // Thay đổi phương thức nếu cần

                logs.add(log);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching audit logs: " + e.getMessage(), e);
        }

        return logs;
    }

    // Hàm thêm bản ghi kiểm tra vào database
    public boolean addAuditLog(AuditLog log) throws Exception {
        String sql = "INSERT INTO AuditLogs (userId, actionType, targetPostId, actionTimestamp) VALUES (?, ?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, log.getUserId());
            ps.setString(2, log.getActionType());
            ps.setInt(3, log.getTargetPostId());
            ps.setTimestamp(4, new java.sql.Timestamp(log.getActionTimestamp().getTime()));

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while adding audit log: " + e.getMessage(), e);
        }
    }

    // Hàm xóa bản ghi kiểm tra theo ID
    public boolean deleteAuditLog(int logId) throws Exception {
        String sql = "DELETE FROM AuditLogs WHERE logId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, logId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while deleting audit log: " + e.getMessage(), e);
        }
    }

    // Hàm lấy bản ghi kiểm tra theo ID
    public AuditLog getAuditLogById(int logId) throws Exception {
        AuditLog log = null;
        String sql = "SELECT * FROM AuditLogs WHERE logId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, logId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                log = new AuditLog();
                log.setLogId(rs.getInt("logId"));
                log.setUserId(rs.getInt("userId"));
                log.setActionType(rs.getString("actionType"));
                log.setTargetPostId(rs.getInt("targetPostId"));
                log.setActionTimestamp(rs.getTimestamp("actionTimestamp"));
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching audit log: " + e.getMessage(), e);
        }

        return log;
    }
}
