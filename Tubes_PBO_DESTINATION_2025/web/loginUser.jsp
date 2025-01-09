<%-- 
    Document   : loginUser
    Created on : Jan 3, 2025, 5:06:41 PM
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
        .btn-custom {
            background-color: white;
            color: black;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 0 10px;
        }
        .content {
            background: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 10px;
            width: 100%;
            max-width: 400px;
        }
        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="mt-3 navbar-brand">Wonderful NTB</h1>
                <nav class="mt-2">
                    <a href="index.jsp" class="text-white mr-3">Home</a>
                    <a href="#" class="text-white">Profile</a>
                </nav>
            </div>
        </div>
        <div class="row login-container">
            <div class="col-12 text-center content">
                <h2>Login User</h2>
                <form method="post" action="UserLoginServlets">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                </form>
                <% if (request.getAttribute("error") != null) { %>
                    <div class="alert alert-danger mt-3">
                        <%= request.getAttribute("error") %>
                    </div>
                <% } %>
                
                <div class="d-flex justify-content-center mt-3">
                    <button class="btn btn-custom"onclick=location.href='loginAdmin.jsp'>Admin</button>
                    
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


