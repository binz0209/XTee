package service;

import dao.MessageDAO;
import model.Message;

import java.util.List;

public class MessageService {
    private MessageDAO messageDAO;

    public MessageService() {
        messageDAO = new MessageDAO();
    }

    // Gửi một tin nhắn mới
    public boolean sendMessage(Message message) throws Exception {
        return messageDAO.sendMessage(message);
    }

    // Lấy tất cả tin nhắn giữa hai người dùng
    public List<Message> getMessagesBetweenUsers(int userId1, int userId2) throws Exception {
        return messageDAO.getMessagesBetweenUsers(userId1, userId2);
    }

    // Xóa một tin nhắn
    public boolean deleteMessage(int messageId) throws Exception {
        return messageDAO.deleteMessage(messageId);
    }
}
