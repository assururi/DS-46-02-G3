<%-- 
    Document   : AdminView
    Created on : Jan 3, 2025, 8:37:06 PM
    Author     : naufa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wonderful NTB</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('image/BG rinjani.png'); /* Ganti dengan path gambar latar Anda */
            background-size: cover;
            background-position: center;
            color: white;
        }
        .overlay {
            background-color: rgba(0, 0, 0, 0.6);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
        .content {
            position: relative;
            z-index: 2;
            text-align: center;
            padding-top: 20%;
        }
        .btn-custom {
            background-color: white;
            color: black;
            border: none;
            padding: 10px 20px;
            margin: 10px;
            border-radius: 10px;
            font-size: 18px;
        }
        .btn-custom:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="content container">
        <h1>Selamat Datang Admin</h1>
        <div class="d-flex justify-content-center">
            <a href="#list-pesanan" class="btn btn-custom">
                <i class="bi bi-clipboard"></i> List Pesanan
            </a>
            <a href="#list-user" class="btn btn-custom">
                <i class="bi bi-people"></i> List User
            </a>
            <a href="#destinasi" class="btn btn-custom">
                <i class="bi bi-airplane"></i> Destinasi
            </a>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</body>
</html>
