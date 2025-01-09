<%-- 
    Document   : loginOPSi
    Created on : Jan 3, 2025, 4:52:12 PM
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
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('image/BG rinjani.png');
            background-size: cover;
            background-position: center;
            height: 100vh;
            color: white;
        }
        .login-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100%;
        }
        .login-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
        }
        .btn-custom {
            background-color: white;
            color: black;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 text-center">
                <img src="image/logo.png" alt="Logo" style="width: 250px; height: 100px; margin-right: 10px;">
                <nav class="mt-2">
                    <a href="index.jsp" class="text-white mr-3">Home</a>
                    <a href="#" class="text-white">Profile</a>
                </nav>
            </div>
        </div>
        <div class="row login-container">
            <div class="col-12 text-center">
                <h2>Login</h2>
                <div class="login-buttons mt-3">
                    <button class="btn btn-custom"onclick=location.href='loginAdmin.jsp'>Admin</button>
                    <button class="btn btn-custom" onclick=location.href='loginUser.jsp'>User</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

