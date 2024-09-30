package model;

import java.util.Date;

public class Post {
    private int id;
    private int userId;
    private Date time;
    private String content;
    private String media;
    private int likes;
    private int comments;
    private boolean isAd;

    public Post() {}

    public Post(int id, int userId, Date time, String content, String media, int likes, int comments, boolean isAd) {
        this.id = id;
        this.userId = userId;
        this.time = time;
        this.content = content;
        this.media = media;
        this.likes = likes;
        this.comments = comments;
        this.isAd = isAd;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getMedia() {
        return media;
    }

    public void setMedia(String media) {
        this.media = media;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public int getComments() {
        return comments;
    }

    public void setComments(int comments) {
        this.comments = comments;
    }

    public boolean isIsAd() {
        return isAd;
    }

    public void setIsAd(boolean isAd) {
        this.isAd = isAd;
    }
}
