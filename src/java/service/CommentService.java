package service;

import dao.CommentDAO;
import model.Comment;

import java.util.List;

public class CommentService {
    private CommentDAO commentDAO;

    public CommentService() {
        commentDAO = new CommentDAO();
    }

    // Lấy tất cả bình luận theo postId
    public List<Comment> getCommentsByPostId(int postId) throws Exception {
        return commentDAO.getCommentsByPostId(postId);
    }

    // Thêm bình luận mới
    public boolean addComment(Comment comment) throws Exception {
        return commentDAO.addComment(comment);
    }

    // Xóa bình luận theo ID
    public boolean deleteComment(int commentId) throws Exception {
        return commentDAO.deleteComment(commentId);
    }

    // Lấy bình luận theo ID
    public Comment getCommentById(int commentId) throws Exception {
        return commentDAO.getCommentById(commentId);
    }
}
