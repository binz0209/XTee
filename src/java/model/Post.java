package model;

public class Post {
    private int id;
    private int userId;
    private String content;
    private String media;
    private User user; // Thêm thuộc tính User để lưu thông tin người dùng

    // Getter và Setter cho id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Getter và Setter cho userId
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    // Getter và Setter cho content
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    // Getter và Setter cho media
    public String getMedia() {
        return media;
    }

    public void setMedia(String media) {
        this.media = media;
    }

    // Getter và Setter cho user
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Post{" + "id=" + id + ", userId=" + userId + ", content=" + content + ", media=" + media + ", user=" + user + '}';
    }
}
