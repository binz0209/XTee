-- Create the XTee database
CREATE DATABASE XTee;
GO

-- Use the XTee database
USE XTee;
GO

-- Create the Users table
CREATE TABLE Users (
    id INT PRIMARY KEY IDENTITY(1,1),
    fullName NVARCHAR(100),
    username NVARCHAR(50) UNIQUE NOT NULL,
    avatar NVARCHAR(MAX),
    password NVARCHAR(255) NOT NULL,
    role NVARCHAR(50) CHECK (role IN ('Admin', 'Member')),
    joinDate DATETIME DEFAULT GETDATE(),
    birthday DATE,
    gender NVARCHAR(20) CHECK (gender IN ('Male', 'Female', 'Other')),
    phoneNumber NVARCHAR(15),
    email NVARCHAR(100),
    friendsCount INT DEFAULT 0,
    postsCount INT DEFAULT 0
);
GO

-- Create the Posts table
CREATE TABLE Posts (
    id INT PRIMARY KEY IDENTITY(1,1),
    userId INT FOREIGN KEY REFERENCES Users(id),
    time DATETIME DEFAULT GETDATE(),
    content NVARCHAR(MAX),
    media NVARCHAR(MAX),
    likes INT DEFAULT 0,
    comments INT DEFAULT 0,
    isAd BIT DEFAULT 0
);
GO

-- Create the Messages table
CREATE TABLE Messages (
    messageId INT PRIMARY KEY IDENTITY(1,1),
    senderId INT FOREIGN KEY REFERENCES Users(id),
    receiverId INT FOREIGN KEY REFERENCES Users(id),
    content NVARCHAR(MAX),
    timestamp DATETIME DEFAULT GETDATE()
);
GO

-- Create the Ads table
CREATE TABLE Ads (
    adId INT PRIMARY KEY IDENTITY(1,1),
    userId INT FOREIGN KEY REFERENCES Users(id),
    postId INT FOREIGN KEY REFERENCES Posts(id),
    campaignName NVARCHAR(255),
    startDate DATE,
    endDate DATE,
    adContent NVARCHAR(MAX),
    adType NVARCHAR(50) CHECK (adType IN ('Standard', 'VIP')),
    clicksCount INT DEFAULT 0,
    viewsCount INT DEFAULT 0,
    budget DECIMAL(18, 2),
    status NVARCHAR(50) DEFAULT 'Pending'
);
GO

-- Create the Friendships table
CREATE TABLE Friendships (
    userId1 INT NOT NULL,
    userId2 INT NOT NULL,
    friendshipDate DATETIME DEFAULT GETDATE(),
    status NVARCHAR(50) CHECK (status IN ('Pending', 'Accepted', 'Blocked', 'Rejected')),
    PRIMARY KEY (userId1, userId2),
    FOREIGN KEY (userId1) REFERENCES Users(id),
    FOREIGN KEY (userId2) REFERENCES Users(id)
);
GO

-- Create the Comments table
CREATE TABLE Comments (
    commentId INT PRIMARY KEY IDENTITY(1,1),
    postId INT FOREIGN KEY REFERENCES Posts(id),
    userId INT FOREIGN KEY REFERENCES Users(id),
    commentText NVARCHAR(MAX),
    commentDate DATETIME DEFAULT GETDATE()
);
GO

-- Create the Likes table
CREATE TABLE Likes (
    likeId INT PRIMARY KEY IDENTITY(1,1),
    postId INT FOREIGN KEY REFERENCES Posts(id),
    userId INT FOREIGN KEY REFERENCES Users(id),
    likeDate DATETIME DEFAULT GETDATE()
);
GO

-- Create the Notifications table
CREATE TABLE Notifications (
    notificationId INT PRIMARY KEY IDENTITY(1,1),
    userId INT FOREIGN KEY REFERENCES Users(id),
    triggeredByUserId INT FOREIGN KEY REFERENCES Users(id),
    notificationType NVARCHAR(50),
    postId INT FOREIGN KEY REFERENCES Posts(id),
    notificationDate DATETIME DEFAULT GETDATE(),
    isRead BIT DEFAULT 0
);
GO

-- Create the Reports table
CREATE TABLE Reports (
    reportId INT PRIMARY KEY IDENTITY(1,1),
    postId INT FOREIGN KEY REFERENCES Posts(id),
    userId INT FOREIGN KEY REFERENCES Users(id),
    reportReason NVARCHAR(MAX),
    reportDate DATETIME DEFAULT GETDATE(),
    status NVARCHAR(50) DEFAULT 'Pending'
);
GO

-- Create AuditLogs table
CREATE TABLE AuditLogs (
    logId INT PRIMARY KEY IDENTITY(1,1),
    userId INT FOREIGN KEY REFERENCES Users(id),
    actionType NVARCHAR(50) CHECK (actionType IN ('login', 'logout', 'post_created', 'post_deleted')),
    targetPostId INT NULL FOREIGN KEY REFERENCES Posts(id),
    actionTimestamp DATETIME DEFAULT GETDATE()
);
GO
