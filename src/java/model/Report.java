package model;

import java.util.Date;

public class Report {
    private int reportId;
    private int postId;
    private int userId;
    private String reportReason;
    private Date reportDate;
    private String status;

    public Report() {}

    public Report(int reportId, int postId, int userId, String reportReason, Date reportDate, String status) {
        this.reportId = reportId;
        this.postId = postId;
        this.userId = userId;
        this.reportReason = reportReason;
        this.reportDate = reportDate;
        this.status = status;
    }

    public int getReportId() {
        return reportId;
    }

    public void setReportId(int reportId) {
        this.reportId = reportId;
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

    public String getReportReason() {
        return reportReason;
    }

    public void setReportReason(String reportReason) {
        this.reportReason = reportReason;
    }

    public Date getReportDate() {
        return reportDate;
    }

    public void setReportDate(Date reportDate) {
        this.reportDate = reportDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Report{" + "reportId=" + reportId + ", postId=" + postId + ", userId=" + userId + ", reportReason=" + reportReason + ", reportDate=" + reportDate + ", status=" + status + '}';
    }
}
