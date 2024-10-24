package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.Like;
import utils.DBConnection;

public class LikeDAO {

    // Hàm thêm một lượt thích mới
    public boolean addLike(Like like) throws Exception {
        String sql = "INSERT INTO Likes (postId, userId, likeDate) VALUES (?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, like.getPostId());
            ps.setInt(2, like.getUserId());
            ps.setTimestamp(3, new java.sql.Timestamp(like.getLikeDate().getTime()));

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while adding like: " + e.getMessage(), e);
        }
    }

    // Hàm lấy tất cả lượt thích cho một bài viết
    public List<Like> getLikesByPostId(int postId) throws Exception {
        List<Like> likes = new ArrayList<>();
        String sql = "SELECT * FROM Likes WHERE postId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Like like = new Like();
                like.setLikeId(rs.getInt("likeId"));
                like.setPostId(rs.getInt("postId"));
                like.setUserId(rs.getInt("userId"));
                like.setLikeDate(rs.getTimestamp("likeDate"));

                likes.add(like);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching likes: " + e.getMessage(), e);
        }

        return likes;
    }

    // Hàm xóa một lượt thích
    public boolean removeLike(int likeId) throws Exception {
        String sql = "DELETE FROM Likes WHERE likeId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, likeId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while removing like: " + e.getMessage(), e);
        }
    }

    // Hàm kiểm tra xem người dùng đã thích bài viết hay chưa
    public boolean isPostLikedByUser(int postId, int userId) throws Exception {
        String sql = "SELECT COUNT(*) FROM Likes WHERE postId = ? AND userId = ?";
        
        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, postId);
            ps.setInt(2, userId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            throw new Exception("Error while checking if post is liked by user: " + e.getMessage(), e);
        }

        return false;
    }
}
