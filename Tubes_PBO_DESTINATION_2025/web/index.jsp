<%-- 
    Document   : index
    Created on : Jan 3, 2025, 3:42:50 PM
    Author     : MSI GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wonderful NTB</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('image/BG rinjani.png');
            background-size: cover;
            font-family: Arial, sans-serif;
            color: white;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .main-text {
            font-size: 36px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand text-white" href="">
                <img src="image/logo.png" alt="Logo" style="width: 250px; height: 100px; margin-right: 10px;">
            </a>

            <div class="collapse navbar-collapse justify-content-end">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="loginOPSi.jsp">Login</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="d-flex flex-column align-items-center justify-content-center vh-100">
            <h1 class="main-text">Habiskan waktu liburanmu bersama dengan kami</h1>
            <button class="btn btn-warning btn-lg"onclick="location.href='Home.jsp'">EXPLORE</button>
        </div>
    </div>
    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
