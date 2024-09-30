package model;

import java.util.Date;

public class Advertisement {
    private int adId;
    private int userId;
    private int postId;
    private String campaignName;
    private Date startDate;
    private Date endDate;
    private String adContent;
    private String adType;
    private int clicksCount;
    private int viewsCount;
    private double budget;
    private String status;

    public Advertisement() {}

    public Advertisement(int adId, int userId, int postId, String campaignName, Date startDate, Date endDate, String adContent, String adType, int clicksCount, int viewsCount, double budget, String status) {
        this.adId = adId;
        this.userId = userId;
        this.postId = postId;
        this.campaignName = campaignName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.adContent = adContent;
        this.adType = adType;
        this.clicksCount = clicksCount;
        this.viewsCount = viewsCount;
        this.budget = budget;
        this.status = status;
    }

    public int getAdId() {
        return adId;
    }

    public void setAdId(int adId) {
        this.adId = adId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getCampaignName() {
        return campaignName;
    }

    public void setCampaignName(String campaignName) {
        this.campaignName = campaignName;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getAdContent() {
        return adContent;
    }

    public void setAdContent(String adContent) {
        this.adContent = adContent;
    }

    public String getAdType() {
        return adType;
    }

    public void setAdType(String adType) {
        this.adType = adType;
    }

    public int getClicksCount() {
        return clicksCount;
    }

    public void setClicksCount(int clicksCount) {
        this.clicksCount = clicksCount;
    }

    public int getViewsCount() {
        return viewsCount;
    }

    public void setViewsCount(int viewsCount) {
        this.viewsCount = viewsCount;
    }

    public double getBudget() {
        return budget;
    }

    public void setBudget(double budget) {
        this.budget = budget;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    
}
