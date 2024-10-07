<%-- 
    Document   : PostingContent
    Created on : Oct 2, 2024, 10:07:58 PM
    Author     : FPTSHOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Posting Content</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <style>
        * {
            box-sizing: border-box; 
        }
        .container {
            border: 1px solid #B5B5B5; 
            border-radius: 15px; 
            padding: 0; 
            width: 40%; 
            margin: 0 auto; 
        }
        .user-info {
            display: flex; 
            align-items: center; 
            justify-content: center; 
            gap: 10px; 
            width: 100%;
            margin: -20px auto;
        }
        .user-info img {
            width: 40px;
            height: 40px;
            border-radius: 50px; 
            margin-left: 15px;
        }

        .user-info h1 {
            font-size: 18px; 
            margin: 0;
            padding-top: 35px;
        }
        .user-icon {
            margin-left: auto; 
            font-size: 24px; 
            color: black; 
            margin-top: 35px;
            margin-right: 15px;
        }
        .post-button {
            background-color: #D9D9D9; 
            border: none; 
            color: #898989; 
            font-size: 20px; 
            border-radius: 15px; 
            width: 60%; 
            height: 50px;
            margin-bottom: 25px;
        }
        post-button:hover{
            background-color: #A6A6A6; 
            color: #FFFFFF; 
        }
        .custom-textarea {
            width: 100%;
            height: 250px;
            resize: none;
            margin-top: 35px;
            border: 1px solid #B5B5B5 !important;
        }
        .post-spacing {
            margin-top: 10px; 
        }
        .create-post-container {
            background-color: #CCE0AC; 
            padding-top: 5px; 
            width: 100%; 
            height: 60px;
            font-size: 20px;
            margin: 0 auto; 
            text-align: center;
            border-top-left-radius: 15px; 
            border-top-right-radius: 15px; 
            border-bottom-left-radius: 0; 
            border-bottom-right-radius: 0; 
        }
        .add-post-container {
            margin-top: 5px;
            display: flex;
            justify-content: space-between; 
            align-items: center;
            width: 90%; 
            margin: 20px auto; 
            border: 1px solid #B5B5B5;
            border-radius: 10px;
            padding: 15px;
        }

        .add-post-icons {
            display: flex;
            gap: 15px;
        }

    </style>
    <body>
        <div class="container text-center mt-5">
            <div class="create-post-container">
                <h2>Create post</h2>
            </div>
            <div class="user-info">
                <img src="../../assets/images/avt.jpg" class="mt-5" width="7%" alt="alt"/>
                <h1>NgXuanHung</h1>
                <svg xmlns="http://www.w3.org/2000/svg" class="user-icon" width="1em" height="1em" viewBox="0 0 26 26"><path fill="currentColor" d="M22.438-.063c-.375 0-.732.17-1.032.47l-.718.687l4.218 4.218l.688-.718c.6-.6.6-1.494 0-2.094L23.5.406c-.3-.3-.688-.469-1.063-.469zM20 1.688l-1.094.907l4.5 4.5l1-1zm-1.688 1.625l-9.03 8.938a1 1 0 0 0-.126.125l-.062.031a1 1 0 0 0-.219.438l-1.219 4.281a.975.975 0 0 0 1.219 1.219l4.281-1.219a.98.98 0 0 0 .656-.531l8.876-8.782L21 6v.094l-1.188-1.188h.094l-1.593-1.593zM.813 4A1 1 0 0 0 0 5v20a1 1 0 0 0 1 1h20a1 1 0 0 0 1-1V14a1 1 0 1 0-2 0v10H2V6h10a1 1 0 1 0 0-2H1a1 1 0 0 0-.094 0a1 1 0 0 0-.094 0zm9.813 9.813l1.375.093l.094 1.5l-1.375.406l-.531-.53z"/></svg>
            </div> 
            <div>
                <textarea class="custom-textarea p-3 border border-secondary rounded" placeholder="What did you eat today?"></textarea>
            </div>
            <div class="d-flex align-items-center justify-content-center mt-3">
                <div class="add-post-container">
                    <h5>Add to your post...</h5>
                    <div class="add-post-icons">
                        <svg xmlns="http://www.w3.org/2000/svg" width="1.5em" height="1.5em" viewBox="0 0 24 24"><path fill="currentColor" d="M5 21q-.825 0-1.412-.587T3 19V5q0-.825.588-1.412T5 3h14q.825 0 1.413.588T21 5v14q0 .825-.587 1.413T19 21zm0-2h14V5H5zm1-2h12l-3.75-5l-3 4L9 13zm-1 2V5z"/></svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="1.5em" height="1.5em" viewBox="0 0 24 24"><path fill="currentColor" fill-rule="evenodd" d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10s-4.477 10-10 10m4-9a4 4 0 1 1-8 0zm-4 7a8 8 0 1 0 0-16a8 8 0 0 0 0 16m-2.5-9a1.5 1.5 0 1 0 0-3a1.5 1.5 0 0 0 0 3m5 0a1.5 1.5 0 1 0 0-3a1.5 1.5 0 0 0 0 3"/></svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="1.5em" height="1.5em" viewBox="0 0 24 24"><path fill="currentColor" d="M12 12c-1.1 0-2-.9-2-2s.9-2 2-2s2 .9 2 2s-.9 2-2 2m6-1.8C18 6.57 15.35 4 12 4s-6 2.57-6 6.2c0 2.34 1.95 5.44 6 9.14c4.05-3.7 6-6.8 6-9.14M12 2c4.2 0 8 3.22 8 8.2c0 3.32-2.67 7.25-8 11.8c-5.33-4.55-8-8.48-8-11.8C4 5.22 7.8 2 12 2"/></svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="1.5em" height="1.5em" viewBox="0 0 36 36"><path fill="currentColor" d="M21.89 4H7.83A1.88 1.88 0 0 0 6 5.91v24.18A1.88 1.88 0 0 0 7.83 32h20.34A1.88 1.88 0 0 0 30 30.09V11.92Zm-.3 2.49l6 5.9h-6ZM8 30V6h12v8h8v16Z" class="clr-i-outline clr-i-outline-path-1"/><path fill="none" d="M0 0h36v36H0z"/></svg>
                    </div>
                </div>
            </div>
            <div>
                <input type="submit" value="Post" class="post-button post-spacing"/>
            </div>
        </div>
    </body>
</body>
</html>
