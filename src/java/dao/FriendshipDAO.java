package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.Friendship;
import utils.DBConnection;

public class FriendshipDAO {

    // Hàm thêm một mối quan hệ bạn bè mới
    public boolean addFriendship(Friendship friendship) throws Exception {
        String sql = "INSERT INTO Friendships (userId1, userId2, friendshipDate, status) VALUES (?, ?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, friendship.getUserId1());
            ps.setInt(2, friendship.getUserId2());
            ps.setTimestamp(3, new java.sql.Timestamp(friendship.getFriendshipDate().getTime()));
            ps.setString(4, friendship.getStatus());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while adding friendship: " + e.getMessage(), e);
        }
    }

    // Hàm lấy tất cả mối quan hệ bạn bè của một người dùng
    public List<Friendship> getFriendshipsByUserId(int userId) throws Exception {
        List<Friendship> friendships = new ArrayList<>();
        String sql = "SELECT * FROM Friendships WHERE userId1 = ? OR userId2 = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId);
            ps.setInt(2, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Friendship friendship = new Friendship();
                friendship.setUserId1(rs.getInt("userId1"));
                friendship.setUserId2(rs.getInt("userId2"));
                friendship.setFriendshipDate(rs.getTimestamp("friendshipDate"));
                friendship.setStatus(rs.getString("status"));

                friendships.add(friendship);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching friendships: " + e.getMessage(), e);
        }

        return friendships;
    }

    // Hàm xóa một mối quan hệ bạn bè
    public boolean deleteFriendship(int userId1, int userId2) throws Exception {
        String sql = "DELETE FROM Friendships WHERE (userId1 = ? AND userId2 = ?) OR (userId1 = ? AND userId2 = ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId1);
            ps.setInt(2, userId2);
            ps.setInt(3, userId2);
            ps.setInt(4, userId1);

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while deleting friendship: " + e.getMessage(), e);
        }
    }

    // Hàm lấy trạng thái bạn bè giữa hai người dùng
    public String getFriendshipStatus(int userId1, int userId2) throws Exception {
        String sql = "SELECT status FROM Friendships WHERE (userId1 = ? AND userId2 = ?) OR (userId1 = ? AND userId2 = ?)";
        String status = null;

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId1);
            ps.setInt(2, userId2);
            ps.setInt(3, userId2);
            ps.setInt(4, userId1);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                status = rs.getString("status");
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching friendship status: " + e.getMessage(), e);
        }

        return status;
    }
}
