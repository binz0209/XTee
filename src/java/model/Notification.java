package model;

import java.util.Date;

public class Notification {
    private int notificationId;
    private int userId;
    private int triggeredByUserId;
    private String notificationType;
    private int postId;
    private Date notificationDate;
    private boolean isRead;

    public Notification() {}

    public Notification(int notificationId, int userId, int triggeredByUserId, String notificationType, int postId, Date notificationDate, boolean isRead) {
        this.notificationId = notificationId;
        this.userId = userId;
        this.triggeredByUserId = triggeredByUserId;
        this.notificationType = notificationType;
        this.postId = postId;
        this.notificationDate = notificationDate;
        this.isRead = isRead;
    }

    public int getNotificationId() {
        return notificationId;
    }

    public void setNotificationId(int notificationId) {
        this.notificationId = notificationId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getTriggeredByUserId() {
        return triggeredByUserId;
    }

    public void setTriggeredByUserId(int triggeredByUserId) {
        this.triggeredByUserId = triggeredByUserId;
    }

    public String getNotificationType() {
        return notificationType;
    }

    public void setNotificationType(String notificationType) {
        this.notificationType = notificationType;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public Date getNotificationDate() {
        return notificationDate;
    }

    public void setNotificationDate(Date notificationDate) {
        this.notificationDate = notificationDate;
    }

    public boolean isIsRead() {
        return isRead;
    }

    public void setIsRead(boolean isRead) {
        this.isRead = isRead;
    }

    @Override
    public String toString() {
        return "Notification{" + "notificationId=" + notificationId + ", userId=" + userId + ", triggeredByUserId=" + triggeredByUserId + ", notificationType=" + notificationType + ", postId=" + postId + ", notificationDate=" + notificationDate + ", isRead=" + isRead + '}';
    }
}
