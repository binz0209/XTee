package dao;

import model.User;
import utils.DBConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private Connection connection;

    public UserDAO() throws Exception {
        DBConnection dbConnection = new DBConnection();
        this.connection = dbConnection.getConnection();
    }

    public List<User> getAllUsers() throws SQLException {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM Users";
        try (Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setFullName(resultSet.getString("fullName"));
                user.setUsername(resultSet.getString("username"));
                user.setAvatar(resultSet.getString("avatar"));
                user.setRole(resultSet.getString("role"));
                user.setJoinDate(resultSet.getTimestamp("joinDate")); // Sửa ở đây
                user.setBirthday(resultSet.getDate("birthday")); // Thêm nếu bạn cần
                user.setGender(resultSet.getString("gender")); // Thêm nếu bạn cần
                user.setPhoneNumber(resultSet.getString("phoneNumber")); // Thêm nếu bạn cần
                user.setEmail(resultSet.getString("email")); // Thêm nếu bạn cần
                user.setFriendsCount(resultSet.getInt("friendsCount")); // Thêm nếu bạn cần
                user.setPostsCount(resultSet.getInt("postsCount")); // Thêm nếu bạn cần
                users.add(user);
            }
        }
        return users;
    }


    public void closeConnection() throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
    }
}
