<%-- 
    Document   : posting_popup
    Created on : Oct 8, 2024, 4:34:52 PM
    Author     : TuLinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .posting-overlay {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: 999;
    }

    .popup {
        display: none;
        position: fixed;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        width: 50%;
        max-height: 80%;
        overflow-y: auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 15px;
        background-color: #D9D9D9;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        z-index: 1000;
    }

    .popup textarea {
        width: 100%;
        height: 200px;
        padding: 10px;
        margin-bottom: 10px;
        background-color: #e6e0e0;
        border-radius: 10px;
    }

    .popup button {
        padding: 10px;
        background-color: #F0EAAC;
        color: #000;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        border: 1px solid #000;
    }

    .popup button:hover {
        background-color: #CCE0AC;
    }

    .posting-action {
        display: flex; 
        justify-content: space-between; 
        align-items: center;
    }

    .camera-preview, .image-preview {
        display: none;
        width: 100%; 
        height: auto; 
        margin-bottom: 10px;
    }
    
    .camera-preview {
        transform: scaleX(-1);
    }

    .camera-buttons {
        display: flex;
        justify-content: space-between;
        margin-top: 10px;
    }

    .remove-image {
        cursor: pointer;
        margin-left: 10px;
    }
</style>

<div class="posting-overlay" id="posting-overlay"></div>
<div class="popup" id="post-popup">
    <h2>Create a new post</h2>
    <textarea id="post-textarea" placeholder="Share your thoughts..."></textarea>

    <div id="image-container">
        <img id="image-preview" class="image-preview" alt="Selected Image Preview"/>
        <svg id="remove-image" class="remove-image" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="display:none;" onclick="removeImage()">
            <path fill="currentColor" d="m8.4 17l3.6-3.6l3.6 3.6l1.4-1.4l-3.6-3.6L17 8.4L15.6 7L12 10.6L8.4 7L7 8.4l3.6 3.6L7 15.6zm3.6 5q-2.075 0-3.9-.788t-3.175-2.137T2.788 15.9T2 12t.788-3.9t2.137-3.175T8.1 2.788T12 2t3.9.788t3.175 2.137T21.213 8.1T22 12t-.788 3.9t-2.137 3.175t-3.175 2.138T12 22m0-2q3.35 0 5.675-2.325T20 12t-2.325-5.675T12 4T6.325 6.325T4 12t2.325 5.675T12 20m0-8"/>
        </svg>
    </div>

    <video id="camera-preview" class="camera-preview" autoplay></video>

    <div class="posting-action">
        <div style="display: flex; align-items: center;">
            <label for="image-upload">
                <svg xmlns="http://www.w3.org/2000/svg" width="50px" height="50px" viewBox="0 0 24 24">
                    <path fill="currentColor" d="M5 21q-.825 0-1.412-.587T3 19V5q0-.825.588-1.412T5 3h14q.825 0 1.413.588T21 5v14q0 .825-.587 1.413T19 21zm0-2h14V5H5zm1-2h12l-3.75-5l-3 4L9 13zm-1 2V5z"/>
                </svg>
            </label>
            <input type="file" id="image-upload" accept="image/*" style="display:none;" onchange="handleImageUpload(event)">

            <svg xmlns="http://www.w3.org/2000/svg" width="50px" height="50px" viewBox="0 0 24 24" onclick="startCamera()">
                <path fill="currentColor" d="M20 4h-3.17L15 2H9L7.17 4H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2m0 14H4V6h4.05l1.83-2h4.24l1.83 2H20zM12 7a5 5 0 0 0-5 5a5 5 0 0 0 5 5a5 5 0 0 0 5-5a5 5 0 0 0-5-5m0 8a3 3 0 0 1-3-3a3 3 0 0 1 3-3a3 3 0 0 1-3 3a3 3 0 0 1 3 3"/>
            </svg>
        </div>

        <div style="display: flex; gap: 10px;">
            <button onclick="submitPost()">Post</button>
            <button onclick="closePopup()">Cancel</button>
        </div>
    </div>

    <div class="camera-buttons" id="camera-buttons" style="display: none;">
        <button onclick="captureImage()">Capture</button>
        <button onclick="stopCamera()">Cancel</button>
    </div>
</div>

<script>
    let cameraStream;
    let isUsingCamera = false;

    document.getElementById('post-textarea').addEventListener('focus', function () {
        document.getElementById('post-popup').style.display = 'block';
        document.getElementById('posting-overlay').style.display = 'block';
    });

    function closePopup() {
        stopCamera();
        resetPost();
        document.getElementById('post-popup').style.display = 'none';
        document.getElementById('posting-overlay').style.display = 'none';
    }

    function resetPost() {
        document.getElementById('post-textarea').value = '';
        removeImage();
        document.getElementById('camera-preview').style.display = 'none';
        document.getElementById('camera-buttons').style.display = 'none';
        isUsingCamera = false;
    }

    function handleImageUpload(event) {
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                const imagePreview = document.getElementById('image-preview');
                imagePreview.src = e.target.result;
                imagePreview.style.display = 'block';
                document.getElementById('remove-image').style.display = 'inline';
                stopCamera();
                isUsingCamera = false;
            };
            reader.readAsDataURL(file);
        }
    }

    function startCamera() {
        const video = document.getElementById('camera-preview');
        video.style.display = 'block';
        document.getElementById('camera-buttons').style.display = 'flex';
        isUsingCamera = true;

        if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
            navigator.mediaDevices.getUserMedia({ video: true })
                .then(function(stream) {
                    cameraStream = stream;
                    video.srcObject = stream;
                    video.play();
                })
                .catch(function(error) {
                    console.error("Unable to access camera: ", error);
                });
        }
    }

    function stopCamera() {
        const video = document.getElementById('camera-preview');
        if (cameraStream) {
            const tracks = cameraStream.getTracks();
            tracks.forEach(function(track) {
                track.stop();
            });
        }
        video.srcObject = null;
        video.style.display = 'none';
        document.getElementById('camera-buttons').style.display = 'none';
    }

    function captureImage() {
        const video = document.getElementById('camera-preview');
        const canvas = document.createElement('canvas');
        canvas.width = video.videoWidth;
        canvas.height = video.videoHeight;

        const context = canvas.getContext('2d');
        context.drawImage(video, 0, 0, canvas.width, canvas.height);
        
        const imageData = canvas.toDataURL('image/png');
        const imagePreview = document.getElementById('image-preview');
        imagePreview.src = imageData;
        imagePreview.style.display = 'block';
        document.getElementById('remove-image').style.display = 'inline';
        stopCamera();
        isUsingCamera = false;
    }

    function removeImage() {
        const imagePreview = document.getElementById('image-preview');
        imagePreview.style.display = 'none';
        document.getElementById('remove-image').style.display = 'none';
        document.getElementById('image-upload').value = null; // Clear file input
    }

    function submitPost() {
        const postContent = document.getElementById('post-textarea').value;
        const image = document.getElementById('image-preview').src;

        // Add your code to handle the post submission here

        console.log('Post submitted:', postContent, image);
        closePopup();
    }
</script>
