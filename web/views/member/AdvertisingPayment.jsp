<%-- 
    Document   : AdvertisingPayment
    Created on : Oct 6, 2024, 1:42:33 PM
    Author     : FPTSHOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Advertising Payment</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <style>
        .card {
            background-color: #D9D9D9; 
            border-radius: 15px;
        }
        .choose-button {
            background-color: #FFDA5A; 
            border: none; 
            color: #000; 
            padding: 10px 20px; 
            font-size: 16px;
            cursor: pointer; 
            border-radius: 15px; 
        }
        .choose-button:hover {
            background-color: #f0c74b; 
        }
        
    </style>
    <body>
        <div class="container text-center mt-5">
            <h2 class="mt-5">Welcome to Xtee's customer advertising package payment gateway</h2>      
            <h3 class="mt-5">Choose your advertising package</h3>
        </div>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6 text-center">
                    <div class="card p-3 h-100 d-flex-column justify-content-center align-items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="mt-3" width="9em" height="9em" viewBox="0 0 256 256"><path fill="currentColor" d="M172 68h-24a12 12 0 0 0-12 12v96a12 12 0 0 0 12 12h24a60 60 0 0 0 0-120m0 96h-12V92h12a36 36 0 0 1 0 72M20 44a12 12 0 0 1 12-12h192a12 12 0 0 1 0 24H32a12 12 0 0 1-12-12m216 168a12 12 0 0 1-12 12H32a12 12 0 0 1 0-24h192a12 12 0 0 1 12 12M96 152c0-6.37-6.29-9.32-24-14.42c-16.14-4.65-38.23-11-38.23-33.58c0-20.52 18.15-36 42.22-36c17.24 0 32.06 8.14 38.69 21.24a12 12 0 1 1-21.41 10.84C90.8 95.17 84 92 76 92c-10.22 0-18.22 5.27-18.22 12c0 1.09 0 2.21 3.28 4.17c4.18 2.48 11 4.45 17.6 6.35c8.75 2.52 17.8 5.13 25.38 9.86c13.19 8.23 16 19.56 16 27.62c0 20.19-19.33 36-44 36s-44-15.81-44-36a12 12 0 0 1 24 0c0 6.87 10.56 12 20 12S96 158.87 96 152"/></svg>
                        <h5>100.000</h5>
                        <h5>Standard package</h5>
                        <h5>Each user will see your advertisement 5 times a day.</h5>
                        <h5>Time limit: 1 month.</h5>
                        <input type="submit" value="Choose" class="choose-button mt-5"/>
                    </div>
                </div>
                <div class="col-md-6 text-center">
                    <div class="card p-3 h-100 d-flex-column justify-content-center align-items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="11em" height="11em" viewBox="0 0 24 24"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5h18M3 19h18M4 9l2 6h1l2-6m3 0v6m4 0V9h2a2 2 0 1 1 0 4h-2"/></svg>
                        <h5>200.000</h5>
                        <h5>Vip package</h5>
                        <h5>Your post will appear on the banner of the website.</h5>
                        <h5>Each user will see your advertisement 10 times a day.</h5>
                        <h5>Time limit: 2 month.</h5>
                        <input type="submit" value="Choose" class="choose-button"/>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
