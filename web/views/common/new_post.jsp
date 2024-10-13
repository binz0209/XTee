<%-- 
    Document   : new_post
    Created on : Oct 13, 2024, 9:32:10 PM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    html,
    body {
        height: 100%;
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
    }
    .new-post {
        margin-bottom: 20px;
        background-color: #D9D9D9;
        border-radius: 15px;
        padding: 20px;
        display: flex;
        align-items: center; /* Đảm bảo logo và text area căn giữa theo chiều dọc */
    }

    .new-post img {
        width: 50px;
        height: auto;
    }

    .new-post textarea {
        background-color: #EEEEEE;
        width: 100%;
        height: 50px;
        border: 1px solid #ccc;
        border-radius: 10px;
        padding: 10px;
        resize: none;
        font-size: 16px;
        margin-left: 10px;
        flex-grow: 1; /* Đảm bảo text area giãn ra hết không gian còn lại */
    }
</style>

<div class="new-post">
    <img src="${pageContext.request.contextPath}/assets/images/tuLinh294.jpg" alt="User Logo" class="logo">
    <textarea id="post-textarea" placeholder="What did you eat today?"></textarea>
</div>
<!-- Include Popup -->
<jsp:include page="../common/posting_popup.jsp" />
<script>
    // Hàm mở popup
    document.getElementById('create-post-button').addEventListener('click', function () {
        document.getElementById('post-popup').style.display = 'block';
        document.getElementById('posting-overlay').style.display = 'block';
    });

    // Hàm đóng popup
    function closePopup() {
        document.getElementById('post-popup').style.display = 'none';
        document.getElementById('posting-overlay').style.display = 'none';
    }

    // Hàm gửi bài đăng
    function submitPost() {
        const postContent = document.getElementById('post-textarea').value;

        // Gửi dữ liệu đến máy chủ (thực hiện một fetch hoặc AJAX để gửi dữ liệu ở đây)

        closePopup(); // Đóng popup sau khi gửi bài
    }
</script>