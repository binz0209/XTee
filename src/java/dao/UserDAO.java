package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.User;
import utils.DBConnection;

public class UserDAO {

    // Hàm lấy tất cả user từ database
    public List<User> getAllUsers() throws Exception {
        List<User> users = new ArrayList<>();

        String sql = "SELECT * FROM Users";

        try (Connection conn = new DBConnection().getConnection(); PreparedStatement ps = conn.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setFullName(rs.getString("fullName"));
                user.setUsername(rs.getString("username"));
                user.setAvatar(rs.getString("avatar"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
                user.setJoinDate(rs.getDate("joinDate"));
                user.setBirthday(rs.getDate("birthday"));
                user.setGender(rs.getString("gender"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setEmail(rs.getString("email"));
                user.setFriendsCount(rs.getInt("friendsCount"));
                user.setPostsCount(rs.getInt("postsCount"));

                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while fetching users", e);
        }

        return users;
    }

    // Hàm thêm user vào database
    public boolean addUser(User user) throws Exception {
        String sql = "INSERT INTO Users (fullName, username, avatar, password, role, birthday, gender, phoneNumber, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, user.getFullName());
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getAvatar());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getRole());
            ps.setDate(6, new java.sql.Date(user.getBirthday().getTime()));
            ps.setString(7, user.getGender());
            ps.setString(8, user.getPhoneNumber());
            ps.setString(9, user.getEmail());

            int result = ps.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while adding user", e);
        }
    }

    // Hàm xóa user từ database
    public boolean deleteUser(int userId) throws Exception {
        String sql = "DELETE FROM Users WHERE id = ?";

        try (Connection conn = new DBConnection().getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId);
            int result = ps.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while deleting user", e);
        }
    }

    // Hàm lấy user theo ID
    public User getUserById(int userId) throws Exception {
        User user = null;
        String sql = "SELECT * FROM Users WHERE id = ?";

        try (Connection conn = new DBConnection().getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setFullName(rs.getString("fullName"));
                user.setUsername(rs.getString("username"));
                user.setAvatar(rs.getString("avatar"));
                // Còn lại các thuộc tính khác nếu cần
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while fetching user", e);
        }

        return user;
    }

    // Hàm cập nhật thông tin user trong database
    public boolean updateUser(User user) throws Exception {
        String sql = "UPDATE Users SET fullName = ?, username = ?, avatar = ?, password = ?, role = ?, birthday = ?, gender = ?, phoneNumber = ?, email = ? WHERE id = ?";

        try (Connection conn = new DBConnection().getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, user.getFullName());
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getAvatar());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getRole());
            ps.setDate(6, new java.sql.Date(user.getBirthday().getTime()));
            ps.setString(7, user.getGender());
            ps.setString(8, user.getPhoneNumber());
            ps.setString(9, user.getEmail());
            ps.setInt(10, user.getId());

            int result = ps.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while updating user", e);
        }
    }

    public User checkLogin(String username, String password) throws Exception {
        String sql = "SELECT * FROM Users WHERE username = ? AND password = ?";
        User user = null;

        try (Connection conn = new DBConnection().getConnection(); 
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password); // Nên mã hóa mật khẩu trước khi so sánh

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setFullName(rs.getString("fullName"));
                user.setUsername(rs.getString("username"));
                user.setAvatar(rs.getString("avatar"));
                // Thiết lập các thuộc tính khác của User nếu cần
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error while checking login", e);
        }

        return user;
    }
}
