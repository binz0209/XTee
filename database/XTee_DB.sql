-- Create the XTee database
CREATE DATABASE XTee;
GO

-- Use the XTee database
USE XTee;
GO

-- Create the Users table
CREATE TABLE Users (
    id INT PRIMARY KEY IDENTITY(1,1),
    full_name NVARCHAR(100),
    username NVARCHAR(50) UNIQUE NOT NULL,
    password NVARCHAR(255) NOT NULL,
    role NVARCHAR(50) CHECK (role IN ('Admin', 'Member')),
    join_date DATETIME DEFAULT GETDATE(),
    birthday DATE,
    gender NVARCHAR(20) CHECK (gender IN ('Male', 'Female', 'Other')),
    phone_number NVARCHAR(15),
    email NVARCHAR(100),
    friends_count INT DEFAULT 0,
    posts_count INT DEFAULT 0
);
GO

-- Create the Reviews/Post table
CREATE TABLE Reviews_Posts (
    id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES Users(id),
    time DATETIME DEFAULT GETDATE(),
    content NVARCHAR(MAX),
    media NVARCHAR(MAX),
    likes INT DEFAULT 0,
    comments INT DEFAULT 0,
    is_ad BIT DEFAULT 0
);
GO

-- Create the Messages table
CREATE TABLE Messages (
    message_id INT PRIMARY KEY IDENTITY(1,1),
    sender_id INT FOREIGN KEY REFERENCES Users(id),
    receiver_id INT FOREIGN KEY REFERENCES Users(id),
    content NVARCHAR(MAX),
    timestamp DATETIME DEFAULT GETDATE()
);
GO

-- Create the Ads table
CREATE TABLE Ads (
    ad_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES Users(id),
    post_id INT FOREIGN KEY REFERENCES Reviews_Posts(id),
    campaign_name NVARCHAR(255),
    start_date DATE,
    end_date DATE,
    ad_content NVARCHAR(MAX),
    ad_type NVARCHAR(50) CHECK (ad_type IN ('Standard', 'VIP')),
    clicks_count INT DEFAULT 0,
    views_count INT DEFAULT 0,
    budget DECIMAL(18, 2),
    status NVARCHAR(50) DEFAULT 'Pending'
);
GO

-- Create the Friendships table
CREATE TABLE Friendships (
    user_id_1 INT NOT NULL,
    user_id_2 INT NOT NULL,
    friendship_date DATETIME DEFAULT GETDATE(),
    status NVARCHAR(50) CHECK (status IN ('Pending', 'Accepted', 'Blocked', 'Rejected')),
    PRIMARY KEY (user_id_1, user_id_2),
    FOREIGN KEY (user_id_1) REFERENCES Users(id),
    FOREIGN KEY (user_id_2) REFERENCES Users(id)
);
GO

-- Create the Comments table
CREATE TABLE Comments (
    comment_id INT PRIMARY KEY IDENTITY(1,1),
    post_id INT FOREIGN KEY REFERENCES Reviews_Posts(id),
    user_id INT FOREIGN KEY REFERENCES Users(id),
    comment_text NVARCHAR(MAX),
    comment_date DATETIME DEFAULT GETDATE()
);
GO

-- Create the Likes table
CREATE TABLE Likes (
    like_id INT PRIMARY KEY IDENTITY(1,1),
    post_id INT FOREIGN KEY REFERENCES Reviews_Posts(id),
    user_id INT FOREIGN KEY REFERENCES Users(id),
    like_date DATETIME DEFAULT GETDATE()
);
GO

-- Create the Notifications table
CREATE TABLE Notifications (
    notification_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES Users(id),
    triggered_by_user_id INT FOREIGN KEY REFERENCES Users(id),
    notification_type NVARCHAR(50),
    post_id INT FOREIGN KEY REFERENCES Reviews_Posts(id),
    notification_date DATETIME DEFAULT GETDATE(),
    is_read BIT DEFAULT 0
);
GO

-- Create the Reports table
CREATE TABLE Reports (
    report_id INT PRIMARY KEY IDENTITY(1,1),
    post_id INT FOREIGN KEY REFERENCES Reviews_Posts(id),
    user_id INT FOREIGN KEY REFERENCES Users(id),
    report_reason NVARCHAR(MAX),
    report_date DATETIME DEFAULT GETDATE(),
    status NVARCHAR(50) DEFAULT 'Pending'
);
GO

-- Create AuditLogs table
CREATE TABLE AuditLogs (
    log_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES Users(id),
    action_type NVARCHAR(50) CHECK (action_type IN ('login', 'logout', 'post_created', 'post_deleted')),
    target_post_id INT NULL FOREIGN KEY REFERENCES Reviews_Posts(id),
    action_timestamp DATETIME DEFAULT GETDATE()
);
GO
