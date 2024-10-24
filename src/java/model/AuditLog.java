package model;

import java.util.Date;

public class AuditLog {
    private int logId;
    private int userId;
    private String actionType;
    private int targetPostId;
    private Date actionTimestamp;

    public AuditLog() {}

    public AuditLog(int logId, int userId, String actionType, int targetPostId, Date actionTimestamp) {
        this.logId = logId;
        this.userId = userId;
        this.actionType = actionType;
        this.targetPostId = targetPostId;
        this.actionTimestamp = actionTimestamp;
    }

    public int getLogId() {
        return logId;
    }

    public void setLogId(int logId) {
        this.logId = logId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getActionType() {
        return actionType;
    }

    public void setActionType(String actionType) {
        this.actionType = actionType;
    }

    public int getTargetPostId() {
        return targetPostId;
    }

    public void setTargetPostId(int targetPostId) {
        this.targetPostId = targetPostId;
    }

    public Date getActionTimestamp() {
        return actionTimestamp;
    }

    public void setActionTimestamp(Date actionTimestamp) {
        this.actionTimestamp = actionTimestamp;
    }

    @Override
    public String toString() {
        return "AuditLog{" + "logId=" + logId + ", userId=" + userId + ", actionType=" + actionType + ", targetPostId=" + targetPostId + ", actionTimestamp=" + actionTimestamp + '}';
    }
}
