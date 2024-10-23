package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Comment;
import utils.DBConnection;

public class CommentDAO {

    // Hàm lấy tất cả bình luận theo postId từ database
    public List<Comment> getCommentsByPostId(int postId) throws Exception {
        List<Comment> comments = new ArrayList<>();
        String sql = "SELECT * FROM Comments WHERE postId = ?"; // Thay đổi tên bảng nếu cần

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Comment comment = new Comment();
                comment.setCommentId(rs.getInt("commentId"));
                comment.setPostId(rs.getInt("postId"));
                comment.setUserId(rs.getInt("userId"));
                comment.setCommentText(rs.getString("commentText"));
                comment.setCommentDate(rs.getTimestamp("commentDate")); // Thay đổi phương thức nếu cần

                comments.add(comment);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching comments: " + e.getMessage(), e);
        }

        return comments;
    }

    // Hàm thêm bình luận vào database
    public boolean addComment(Comment comment) throws Exception {
        String sql = "INSERT INTO Comments (postId, userId, commentText, commentDate) VALUES (?, ?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, comment.getPostId());
            ps.setInt(2, comment.getUserId());
            ps.setString(3, comment.getCommentText());
            ps.setTimestamp(4, new java.sql.Timestamp(comment.getCommentDate().getTime()));

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while adding comment: " + e.getMessage(), e);
        }
    }

    // Hàm xóa bình luận theo ID
    public boolean deleteComment(int commentId) throws Exception {
        String sql = "DELETE FROM Comments WHERE commentId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, commentId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while deleting comment: " + e.getMessage(), e);
        }
    }

    // Hàm lấy bình luận theo ID
    public Comment getCommentById(int commentId) throws Exception {
        Comment comment = null;
        String sql = "SELECT * FROM Comments WHERE commentId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, commentId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                comment = new Comment();
                comment.setCommentId(rs.getInt("commentId"));
                comment.setPostId(rs.getInt("postId"));
                comment.setUserId(rs.getInt("userId"));
                comment.setCommentText(rs.getString("commentText"));
                comment.setCommentDate(rs.getTimestamp("commentDate"));
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching comment: " + e.getMessage(), e);
        }

        return comment;
    }
}
