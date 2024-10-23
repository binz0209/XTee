package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.Notification;
import utils.DBConnection;

public class NotificationDAO {

    // Hàm tạo một thông báo mới
    public boolean createNotification(Notification notification) throws Exception {
        String sql = "INSERT INTO Notifications (userId, triggeredByUserId, notificationType, postId, notificationDate, isRead) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, notification.getUserId());
            ps.setInt(2, notification.getTriggeredByUserId());
            ps.setString(3, notification.getNotificationType());
            ps.setInt(4, notification.getPostId());
            ps.setTimestamp(5, new java.sql.Timestamp(notification.getNotificationDate().getTime()));
            ps.setBoolean(6, notification.isIsRead());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while creating notification: " + e.getMessage(), e);
        }
    }

    // Hàm lấy tất cả thông báo của một người dùng
    public List<Notification> getNotificationsByUserId(int userId) throws Exception {
        List<Notification> notifications = new ArrayList<>();
        String sql = "SELECT * FROM Notifications WHERE userId = ? ORDER BY notificationDate DESC";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Notification notification = new Notification();
                notification.setNotificationId(rs.getInt("notificationId"));
                notification.setUserId(rs.getInt("userId"));
                notification.setTriggeredByUserId(rs.getInt("triggeredByUserId"));
                notification.setNotificationType(rs.getString("notificationType"));
                notification.setPostId(rs.getInt("postId"));
                notification.setNotificationDate(rs.getTimestamp("notificationDate"));
                notification.setIsRead(rs.getBoolean("isRead"));

                notifications.add(notification);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching notifications: " + e.getMessage(), e);
        }

        return notifications;
    }

    // Hàm đánh dấu thông báo là đã đọc
    public boolean markAsRead(int notificationId) throws Exception {
        String sql = "UPDATE Notifications SET isRead = ? WHERE notificationId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setBoolean(1, true);
            ps.setInt(2, notificationId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while marking notification as read: " + e.getMessage(), e);
        }
    }

    // Hàm xóa một thông báo
    public boolean deleteNotification(int notificationId) throws Exception {
        String sql = "DELETE FROM Notifications WHERE notificationId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, notificationId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while deleting notification: " + e.getMessage(), e);
        }
    }
}
