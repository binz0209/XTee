package service;

import dao.FriendshipDAO;
import model.Friendship;

import java.util.List;

public class FriendshipService {
    private FriendshipDAO friendshipDAO;

    public FriendshipService() {
        friendshipDAO = new FriendshipDAO();
    }

    // Thêm một mối quan hệ bạn bè mới
    public boolean addFriendship(Friendship friendship) throws Exception {
        return friendshipDAO.addFriendship(friendship);
    }

    // Lấy tất cả mối quan hệ bạn bè của một người dùng
    public List<Friendship> getFriendshipsByUserId(int userId) throws Exception {
        return friendshipDAO.getFriendshipsByUserId(userId);
    }

    // Xóa một mối quan hệ bạn bè
    public boolean deleteFriendship(int userId1, int userId2) throws Exception {
        return friendshipDAO.deleteFriendship(userId1, userId2);
    }

    // Lấy trạng thái bạn bè giữa hai người dùng
    public String getFriendshipStatus(int userId1, int userId2) throws Exception {
        return friendshipDAO.getFriendshipStatus(userId1, userId2);
    }
}
