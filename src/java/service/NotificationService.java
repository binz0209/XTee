package service;

import dao.NotificationDAO;
import model.Notification;

import java.util.List;

public class NotificationService {
    private NotificationDAO notificationDAO;

    public NotificationService() {
        notificationDAO = new NotificationDAO(); // Khởi tạo DAO để thao tác với thông báo
    }

    // Tạo một thông báo mới
    public boolean createNotification(Notification notification) throws Exception {
        return notificationDAO.createNotification(notification);
    }

    // Lấy tất cả thông báo của một người dùng
    public List<Notification> getNotificationsByUserId(int userId) throws Exception {
        return notificationDAO.getNotificationsByUserId(userId);
    }

    // Đánh dấu thông báo là đã đọc
    public boolean markAsRead(int notificationId) throws Exception {
        return notificationDAO.markAsRead(notificationId);
    }

    // Xóa một thông báo
    public boolean deleteNotification(int notificationId) throws Exception {
        return notificationDAO.deleteNotification(notificationId);
    }
}
