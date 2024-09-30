package model;

import java.util.Date;
import java.util.List;

public class User {
    private int id;
    private String fullName;
    private String username;
    private String avatar;
    private String password;
    private String role;
    private Date joinDate;
    private Date birthday;
    private String gender;
    private String phoneNumber;
    private String email;
    private int friendsCount;
    private int postsCount;

    private List<Post> posts;
    private List<Comment> comments;
    private List<Like> likes;
    private List<Advertisement> advertisements;
    private List<Notification> notifications;
    private List<Report> reports;

    public User() {
    }

    public User(int id, String fullName, String username, String avatar, String password, String role, Date joinDate, Date birthday, String gender, String phoneNumber, String email, int friendsCount, int postsCount, List<Post> posts, List<Comment> comments, List<Like> likes, List<Advertisement> advertisements, List<Notification> notifications, List<Report> reports) {
        this.id = id;
        this.fullName = fullName;
        this.username = username;
        this.avatar = avatar;
        this.password = password;
        this.role = role;
        this.joinDate = joinDate;
        this.birthday = birthday;
        this.gender = gender;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.friendsCount = friendsCount;
        this.postsCount = postsCount;
        this.posts = posts;
        this.comments = comments;
        this.likes = likes;
        this.advertisements = advertisements;
        this.notifications = notifications;
        this.reports = reports;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Date getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(Date joinDate) {
        this.joinDate = joinDate;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getFriendsCount() {
        return friendsCount;
    }

    public void setFriendsCount(int friendsCount) {
        this.friendsCount = friendsCount;
    }

    public int getPostsCount() {
        return postsCount;
    }

    public void setPostsCount(int postsCount) {
        this.postsCount = postsCount;
    }

    public List<Post> getPosts() {
        return posts;
    }

    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public List<Like> getLikes() {
        return likes;
    }

    public void setLikes(List<Like> likes) {
        this.likes = likes;
    }

    public List<Advertisement> getAdvertisements() {
        return advertisements;
    }

    public void setAdvertisements(List<Advertisement> advertisements) {
        this.advertisements = advertisements;
    }

    public List<Notification> getNotifications() {
        return notifications;
    }

    public void setNotifications(List<Notification> notifications) {
        this.notifications = notifications;
    }

    public List<Report> getReports() {
        return reports;
    }

    public void setReports(List<Report> reports) {
        this.reports = reports;
    }
    
}

