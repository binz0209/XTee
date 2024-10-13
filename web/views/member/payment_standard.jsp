<%-- 
    Document   : PaymentStandard
    Created on : Oct 7, 2024, 2:12:40 AM
    Author     : FPTSHOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Standard</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
        <style>
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
                        <h4>100.000 VND</h4>
                        <input type="submit" value="Payment" class="payment-button payment-spacing"/>
                    </div>
                </div>  
            </div>
        </div>
    </body>
</html>
