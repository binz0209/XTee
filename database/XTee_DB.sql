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

select * from Users;
SELECT * FROM Posts;
SELECT * FROM Messages;
SELECT * FROM Ads;
SELECT * FROM Friendships;
SELECT * FROM Comments;
SELECT * FROM Likes;
SELECT * FROM Notifications;
SELECT * FROM Reports;
SELECT * FROM AuditLogs;

-- Insert data into Posts table (sau khi đã có dữ liệu trong bảng Users)
INSERT INTO Posts (userId, content, media, likes, comments, isAd)
VALUES
(5, 'Had a great meal today!', '/XTee/assets/images/post_1.jpg', 15, 3, 0),
(5, 'Check out this recipe I found!', '/XTee/assets/images/post_2.jpg', 22, 5, 0),
(5, 'New promotional post!', '/XTee/assets/images/post_3.jpg', 50, 12, 1);

-- Insert data into Messages table
INSERT INTO Messages (senderId, receiverId, content)
VALUES
(5, 7, 'Hey, how are you?'),
(7, 5, 'I am good, thanks! What about you?');

-- Insert data into Ads table
INSERT INTO Ads (userId, postId, campaignName, startDate, endDate, adContent, adType, budget)
VALUES
(5, 4, 'Food Lovers Campaign', '2024-10-01', '2024-11-01', 'Check out this amazing dish!', 'Standard', 100.00),
(7, 6, 'Recipe Sharing', '2024-10-05', '2024-11-05', 'Discover new recipes every day!', 'VIP', 500.00);


-- Insert data into Friendships table
INSERT INTO Friendships (userId1, userId2, status)
VALUES
(5, 7, 'Pending');

-- Insert data into Comments table
INSERT INTO Comments (postId, userId, commentText)
VALUES
(4, 5, 'That looks delicious!'),
(5, 5, 'I need to try this recipe!');

-- Insert data into Likes table
INSERT INTO Likes (postId, userId)
VALUES
(4, 5),
(5, 7);

-- Insert data into Notifications table
INSERT INTO Notifications (userId, triggeredByUserId, notificationType, postId)
VALUES
(5, 7, 'like', 5),
(5, 7, 'comment', 6);

-- Insert data into Reports table
INSERT INTO Reports (postId, userId, reportReason)
VALUES
(6, 5, 'Inappropriate content'),
(6, 5, 'Spam post');

-- Insert data into AuditLogs table
INSERT INTO AuditLogs (userId, actionType, targetPostId)
VALUES
(5, 'login', NULL),
(5, 'post_created', 5),
(5, 'post_deleted', 5);
