<%-- 
    Document   : gili.jsp
    Created on : Jan 3, 2025, 5:45:23 PM
    Author     : MSI GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Akomodasi - Gili Trawangan</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('image/gili.png');
            background-size: cover;
            background-position: center;
            color: white;
            font-family: Arial, sans-serif;
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
        }

        .main-content {
            text-align: center;
            padding: 100px 20px;
        }

        .main-content h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .main-content p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .btn-primary {
            font-size: 1rem;
            padding: 10px 20px;
            border-radius: 30px;
        }

        .navbar-brand img {
            width: 40px;
            height: 40px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <!-- Overlay -->
    <div class="overlay"></div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="#">
                <img src="image/logo.png" alt="Logo">
                Wonderful NTB
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="Home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Booking</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Profile</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container d-flex justify-content-center align-items-center content" style="height: 100vh;">
        <div class="main-content">
            <h2>Booking Akomodasi</h2>
            <h1>Gili Trawangan</h1>
            <p>
                Gili Trawangan adalah salah satu dari Tiga Gili yang ada di bagian barat laut Pulau Lombok, bersama dengan Gili Air dan Gili Meno atau yang juga disebut sebagai Pesona Gili Tramena (Trawangan, Meno, dan Air). 
                Salah satu daya tarik utama dari Gili Trawangan adalah aturan bebas polusinya, yaitu tidak ada kendaraan bermotor yang diizinkan untuk beroperasi di pulau ini. Alat transportasi yang dapat digunakan di pulau ini adalah sepeda atau cidomo.
            </p>
            <a href="booking.jsp" class="btn btn-primary">Pesan Sekarang</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

