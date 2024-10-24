package service;

import java.util.List;

import dao.UserDAO;
import model.User;

public class UserService {

    private UserDAO userDAO;

    public UserService() {
        userDAO = new UserDAO();
    }

    // Lấy tất cả người dùng
    public List<User> getAllUsers() throws Exception {
        return userDAO.getAllUsers();
    }

    // Thêm người dùng mới
    public boolean addUser(User user) throws Exception {
        return userDAO.addUser(user);
    }

    // Xóa người dùng
    public boolean deleteUser(int userId) throws Exception {
        return userDAO.deleteUser(userId);
    }

    // Lấy thông tin người dùng theo ID
    public User getUserById(int userId) throws Exception {
        return userDAO.getUserById(userId);
    }
    
    // Cập nhật thông tin người dùng
    public boolean updateUser(User user) throws Exception {
        return userDAO.updateUser(user);
    }
    
    public User checkLogin(String username, String password) throws Exception {
        return userDAO.checkLogin(username, password);
    }
}
