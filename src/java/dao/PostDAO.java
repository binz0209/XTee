package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Post;
import model.User;  // Đảm bảo bạn đã nhập mô hình User
import utils.DBConnection;

public class PostDAO {

    // Hàm lấy tất cả bài viết từ database
    public List<Post> getAllPosts() throws Exception {
        List<Post> posts = new ArrayList<>();
        
        String sql = "SELECT p.id, p.userId, p.content, p.media, u.fullName, u.avatar " +
                     "FROM Posts p " +
                     "JOIN Users u ON p.userId = u.id"; // Kết hợp với bảng Users để lấy tên và avatar
        
        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Post post = new Post();
                post.setId(rs.getInt("id"));
                post.setUserId(rs.getInt("userId")); // Lấy userId từ bảng Posts
                post.setContent(rs.getString("content"));
                post.setMedia(rs.getString("media")); // Lấy media từ bảng Posts

                // Lấy thông tin người dùng từ bảng Users
                User user = new User();
                user.setFullName(rs.getString("fullName"));
                user.setAvatar(rs.getString("avatar"));

                post.setUser(user); // Giả sử bạn có phương thức setUser trong Post
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while fetching posts", e);
        }
        
        return posts;
    }

    // Hàm thêm bài viết vào database
    public boolean addPost(Post post) throws Exception {
        String sql = "INSERT INTO Posts (userId, content, media) VALUES (?, ?, ?)";
        
        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, post.getUserId());
            ps.setString(2, post.getContent());
            ps.setString(3, post.getMedia());

            int result = ps.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while adding post", e);
        }
    }

    // Hàm xóa bài viết từ database
    public boolean deletePost(int postId) throws Exception {
        String sql = "DELETE FROM Posts WHERE id = ?";
        
        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, postId);
            int result = ps.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while deleting post", e);
        }
    }

    // Hàm lấy bài viết theo ID
    public Post getPostById(int postId) throws Exception {
        Post post = null;
        String sql = "SELECT p.id, p.userId, p.content, p.media, u.fullName, u.avatar " +
                     "FROM Posts p " +
                     "JOIN Users u ON p.userId = u.id " +
                     "WHERE p.id = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                post = new Post();
                post.setId(rs.getInt("id"));
                post.setUserId(rs.getInt("userId"));
                post.setContent(rs.getString("content"));
                post.setMedia(rs.getString("media"));
                
                // Lấy thông tin người dùng
                User user = new User();
                user.setFullName(rs.getString("fullName"));
                user.setAvatar(rs.getString("avatar"));

                post.setUser(user); // Giả sử bạn có phương thức setUser trong Post
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while fetching post", e);
        }
        
        return post;
    }
}
