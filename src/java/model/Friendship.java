package model;

import java.util.Date;

public class Friendship {
    private int userId1;
    private int userId2;
    private Date friendshipDate;
    private String status;

    public Friendship() {}

    public Friendship(int userId1, int userId2, Date friendshipDate, String status) {
        this.userId1 = userId1;
        this.userId2 = userId2;
        this.friendshipDate = friendshipDate;
        this.status = status;
    }

    public int getUserId1() {
        return userId1;
    }

    public void setUserId1(int userId1) {
        this.userId1 = userId1;
    }

    public int getUserId2() {
        return userId2;
    }

    public void setUserId2(int userId2) {
        this.userId2 = userId2;
    }

    public Date getFriendshipDate() {
        return friendshipDate;
    }

    public void setFriendshipDate(Date friendshipDate) {
        this.friendshipDate = friendshipDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    
}
