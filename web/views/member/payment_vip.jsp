<%-- 
    Document   : PaymentVIP
    Created on : Oct 7, 2024, 1:12:12 AM
    Author     : FPTSHOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment VIP</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
        
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
            .card {
                background-color: #F1D57D; 
                border-radius: 15px;
                width: 90%;
            }
            .choose-button {
                background-color: #FFDA5A; 
                border: 2px solid black; 
                color: #000; 
                padding: 10px 20px; 
                font-size: 25px; 
                cursor: pointer; 
                border-radius: 15px; 
                position: relative; 
                top: -70px; 
            }
            .payment-button {
                background-color: #D9D9D9; 
                border: none; 
                color: #000; 
                font-size: 40px; 
                border-radius: 15px; 
                width: 200px; 
                height: 100px; 
            }
            .custom-textarea {
                width: 90%; 
                border-radius: 30px; 
                background-color: #FFDA5A;
                height: 300px; 
                resize: none; 
            }
            .choose-button:hover {
                background-color: #f0c74b; 
            }
            .custom-spacing {
                margin-top: 150px; 
            }
            .payment-spacing {
                margin-top: 10px; 
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
                    <div class="container mt-5">
                        <div class="row">
                            <div class="col-md-6 text-center">
                                <div class="card p-3 h-100 d-flex-column justify-content-center align-items-center">
                                    <textarea class="custom-textarea p-3 border border-secondary rounded" placeholder="Write your caption..."></textarea>
                                    <input type="submit" value="Choose image" class="choose-button custom-spacing"/>
                                </div>
                            </div>  
                            <div class="col-md-6 text-center">
                                <div class="p-3 h-100 d-flex-column justify-content-center align-items-center">
                                    <img src="../../assets/images/QR.jpg" class="mt-5" width="30%" alt="alt"/>
                                    <h4>NGUYEN XUAN HUNGG</h4>
                                    <h4>5602063366</h4>
                                    <h4>BIDV-CN HAI VAN</h4>
                                    <h4>200.000 VND</h4>
                                    <input type="submit" value="Payment" class="payment-button payment-spacing"/>
                                </div>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
