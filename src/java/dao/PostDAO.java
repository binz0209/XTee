package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Post;
import model.User;
import utils.DBConnection;

public class PostDAO {

    // Hàm tạo một bài viết mới
    public boolean createPost(Post post) throws Exception {
        String sql = "INSERT INTO Posts (userId, content, media) VALUES (?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, post.getUserId());
            ps.setString(2, post.getContent());
            ps.setString(3, post.getMedia());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while creating post: " + e.getMessage(), e);
        }
    }

    // Hàm lấy tất cả bài viết của người dùng
    public List<Post> getPostsByUserId(int userId) throws Exception {
        List<Post> posts = new ArrayList<>();
        String sql = "SELECT * FROM Posts WHERE userId = ? ORDER BY id DESC";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Post post = new Post();
                post.setId(rs.getInt("id"));
                post.setUserId(rs.getInt("userId"));
                post.setContent(rs.getString("content"));
                post.setMedia(rs.getString("media"));

                posts.add(post);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching posts: " + e.getMessage(), e);
        }

        return posts;
    }

    // Hàm lấy tất cả bài viết (có thể dùng cho trang chính)
    public List<Post> getAllPosts() throws Exception {
        List<Post> posts = new ArrayList<>();
        String sql = "SELECT * FROM Posts ORDER BY id DESC";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Post post = new Post();
                post.setId(rs.getInt("id"));
                post.setUserId(rs.getInt("userId"));
                post.setContent(rs.getString("content"));
                post.setMedia(rs.getString("media"));

                posts.add(post);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching all posts: " + e.getMessage(), e);
        }

        return posts;
    }

    // Hàm xóa một bài viết
    public boolean deletePost(int postId) throws Exception {
        String sql = "DELETE FROM Posts WHERE id = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, postId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while deleting post: " + e.getMessage(), e);
        }
    }
}
