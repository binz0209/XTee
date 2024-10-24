package model;

import java.util.Date;

public class Like {
    private int likeId;
    private int postId;
    private int userId;
    private Date likeDate;

    public Like() {}

    public Like(int likeId, int postId, int userId, Date likeDate) {
        this.likeId = likeId;
        this.postId = postId;
        this.userId = userId;
        this.likeDate = likeDate;
    }

    public int getLikeId() {
        return likeId;
    }

    public void setLikeId(int likeId) {
        this.likeId = likeId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getLikeDate() {
        return likeDate;
    }

    public void setLikeDate(Date likeDate) {
        this.likeDate = likeDate;
    }

    @Override
    public String toString() {
        return "Like{" + "likeId=" + likeId + ", postId=" + postId + ", userId=" + userId + ", likeDate=" + likeDate + '}';
    }
}
