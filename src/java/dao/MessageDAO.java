package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.Message;
import utils.DBConnection;

public class MessageDAO {

    // Hàm gửi một tin nhắn mới
    public boolean sendMessage(Message message) throws Exception {
        String sql = "INSERT INTO Messages (senderId, receiverId, content, timestamp) VALUES (?, ?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, message.getSenderId());
            ps.setInt(2, message.getReceiverId());
            ps.setString(3, message.getContent());
            ps.setTimestamp(4, new java.sql.Timestamp(message.getTimestamp().getTime()));

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while sending message: " + e.getMessage(), e);
        }
    }

    // Hàm lấy tất cả tin nhắn giữa hai người dùng
    public List<Message> getMessagesBetweenUsers(int userId1, int userId2) throws Exception {
        List<Message> messages = new ArrayList<>();
        String sql = "SELECT * FROM Messages WHERE (senderId = ? AND receiverId = ?) OR (senderId = ? AND receiverId = ?) ORDER BY timestamp";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId1);
            ps.setInt(2, userId2);
            ps.setInt(3, userId2);
            ps.setInt(4, userId1);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Message message = new Message();
                message.setMessageId(rs.getInt("messageId"));
                message.setSenderId(rs.getInt("senderId"));
                message.setReceiverId(rs.getInt("receiverId"));
                message.setContent(rs.getString("content"));
                message.setTimestamp(rs.getTimestamp("timestamp"));

                messages.add(message);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching messages: " + e.getMessage(), e);
        }

        return messages;
    }

    // Hàm xóa một tin nhắn
    public boolean deleteMessage(int messageId) throws Exception {
        String sql = "DELETE FROM Messages WHERE messageId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, messageId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while deleting message: " + e.getMessage(), e);
        }
    }
}
