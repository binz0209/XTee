package service;

import dao.LikeDAO;
import model.Like;

import java.util.List;

public class LikeService {
    private LikeDAO likeDAO;

    public LikeService() {
        likeDAO = new LikeDAO(); // Khởi tạo DAO để thao tác với lượt thích
    }

    // Thêm một lượt thích mới
    public boolean addLike(Like like) throws Exception {
        return likeDAO.addLike(like); // Gọi phương thức từ DAO để thêm lượt thích
    }

    // Lấy tất cả lượt thích cho một bài viết
    public List<Like> getLikesByPostId(int postId) throws Exception {
        return likeDAO.getLikesByPostId(postId); // Gọi phương thức từ DAO để lấy lượt thích theo bài viết
    }

    // Xóa một lượt thích
    public boolean removeLike(int likeId) throws Exception {
        return likeDAO.removeLike(likeId); // Gọi phương thức từ DAO để xóa lượt thích
    }

    // Kiểm tra xem người dùng đã thích bài viết hay chưa
    public boolean isPostLikedByUser(int postId, int userId) throws Exception {
        return likeDAO.isPostLikedByUser(postId, userId); // Gọi phương thức từ DAO để kiểm tra lượt thích
    }
}
