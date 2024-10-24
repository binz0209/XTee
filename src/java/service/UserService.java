package service;

import java.util.List;

import dao.UserDAO;
import java.util.Comparator;
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

    // Hàm tìm kiếm người dùng
    public List<User> searchUsers(String keyword) throws Exception {
        return userDAO.searchUsers(keyword);
    }
    
    // Phương thức sắp xếp người dùng
    public List<User> sortUsers(List<User> users, String sortBy) {
        switch (sortBy) {
            case "role":
                users.sort(Comparator.comparing(User::getRole));
                break;
            case "joinDate":
                users.sort(Comparator.comparing(User::getJoinDate));
                break;
            case "name":
                users.sort(Comparator.comparing(User::getFullName));
                break;
            default:
                break; // Nếu không có tham số sắp xếp hợp lệ, không làm gì cả
        }
        return users;
    }

}
