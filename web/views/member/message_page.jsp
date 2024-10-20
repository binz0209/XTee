<%-- 
    Document   : message_page
    Created on : Oct 8, 2024, 9:08:05 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message </title>
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Inter', sans-serif;
            background-color: #f8f9fa;
        }

        .flex-container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            height: 100%;
        }

        .content-container {
            margin-top: 70px;
            margin-left: 25%;
            margin-right: 25%;
            width: 50%;
            padding: 20px;
            border-radius: 8px;
            overflow-y: auto;
        }
        .chat-container {
            display: flex;
            height: 100vh;
            background-color: #F0F0F0;
        }
        .sidebar {
            width: 25%;
            background-color: #E8E8E8;
            padding: 10px;
            box-sizing: border-box;
        }
        .sidebar ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        .chat-item:hover{
            background-color: #ddd;
            color: black;
        }
        .chat-item {
            display: flex;
            align-items: center;
            padding: 10px;
            border-bottom: 1px solid #000;
        }
        .chat-item img {
            border-radius: 50%;
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }
        .chat-item span {
            font-size: 16px;
            color: #333;
        }
        .chat-content {
            flex: 1;
            display: flex;
            flex-direction: column;
            background-color: #DCDCDC;
            padding: 10px;
            border: 2px solid #000000;
        }
        .chat-header {
            display: flex;
            align-items: center;
            padding: 10px;
            background-color: #F8F8F8;
            border-radius: 5px;
        }
        .chat-header img {
            border-radius: 50%;
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }
        .chat-messages {
            flex: 1;
            padding: 10px;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            overflow-y: auto;
            height: 75vh;
        }
        .message {
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 10px;
            max-width: 60%;
        }
        .message.sent {
            align-self: flex-end;
            background-color: #FFE135;
            color: black;
        }
        .message.received {
            align-self: flex-start;
            background-color: #FFFFFF;
        }
        .input-container {
            display: flex;
            align-items: center;
            padding: 10px;
            background-color: #F0F0F0;
            margin-top: 10px;
            border-radius: 5px;
        }
        .input-container input {
            flex: 1;
            padding: 10px;
            border-radius: 20px;
            border: 1px solid #CCCCCC;
            margin-right: 10px;
        }
        .sending-icon{
            width: 20px;
            height: 20px;
        }
    </style>
</head>
<body>
    <div>
        <div>
            <!-- Gọi header -->
            <jsp:include page="../common/header_member.jsp" />
        </div>
        <div class="flex-container">
            <div class="content-container">
                <div class="chat-container">
                    <div class="sidebar">
                        <ul>
                            <li class="chat-item">
                                <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="User 1">
                                <span>User 1</span>
                            </li>
                            <li class="chat-item">
                                <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="User 2">
                                <span>User 2</span>
                            </li>
                            <li class="chat-item">
                                <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="User 3">
                                <span>User 3</span>
                            </li>
                        </ul>
                    </div>
                    <div class="chat-content">
                        <div class="chat-header">
                            <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="Profile Picture">
                            <h2>NgHuuHoaiLinh</h2>
                        </div>
                        <div class="chat-messages">
                            <div class="message received">I'm so hungry</div>
                            <div class="message sent">Me too</div>
                        </div>
                        <div class="input-container">
                            <input type="text" placeholder="Type a message...">
                            <button>
                                <svg class="sending-icon" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><g fill="none" fillRule="evenodd">
                                <path d="m12.594 23.258l-.012.002l-.071.035l-.02.004l-.014-.004l-.071-.036q-.016-.004-.024.006l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427q-.004-.016-.016-.018m.264-.113l-.014.002l-.184.093l-.01.01l-.003.011l.018.43l.005.012l.008.008l.201.092q.019.005.029-.008l.004-.014l-.034-.614q-.005-.019-.02-.022m-.715.002a.02.02 0 0 0-.027.006l-.006.014l-.034.614q.001.018.017.024l.015-.002l.201-.093l.01-.008l.003-.011l.018-.43l-.003-.012l-.01-.01z"></path><path fill="currentColor" d="M17.991 6.01L5.399 10.563l4.195 2.428l3.699-3.7a1 1 0 0 1 1.414 1.415l-3.7 3.7l2.43 4.194L17.99 6.01Zm.323-2.244c1.195-.433 2.353.725 1.92 1.92l-5.282 14.605c-.434 1.198-2.07 1.344-2.709.241l-3.217-5.558l-5.558-3.217c-1.103-.639-.957-2.275.241-2.709z"></path></g>
                            </button>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
