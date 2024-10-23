package service;

import java.util.List;

import dao.PostDAO;
import model.Post;

public class PostService {

    private PostDAO postDAO;

    public PostService() {
        postDAO = new PostDAO();
    }

    // Tạo một bài viết mới
    public boolean createPost(Post post) throws Exception {
        return postDAO.createPost(post);
    }

    // Lấy tất cả bài viết của người dùng
    public List<Post> getPostsByUserId(int userId) throws Exception {
        return postDAO.getPostsByUserId(userId);
    }

    // Lấy tất cả bài viết
    public List<Post> getAllPosts() throws Exception {
        return postDAO.getAllPosts();
    }

    // Xóa một bài viết
    public boolean deletePost(int postId) throws Exception {
        return postDAO.deletePost(postId);
    }
}
