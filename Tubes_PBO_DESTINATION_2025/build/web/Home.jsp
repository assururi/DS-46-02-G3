<%-- 
    Document   : Home
    Created on : Jan 3, 2025, 5:21:36 PM
    Author     : MSI GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wonderful NTB</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styles */
        body {
            background-image: url('image/pinkBeach.png'); /* Ubah dengan gambar latar belakang Anda */
            background-size: cover;
            background-position: center;
            color: white;
        }
        .navbar-brand img {
            width: 40px;
            height: 40px;
            margin-right: 10px;
        }
        .hero-title {
            font-size: 2.5rem;
            font-weight: bold;
        }
        .hero-subtitle {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }
        .card {
            border-radius: 20px;
        }
        .card img {
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="#">
                <img src="image/logo.png" alt="Logo">
               
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="booking.jsp">Booking</a>
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

    <!-- Hero Section -->
    <div class="container text-center mt-5">
        <p class="text-uppercase">Eksplorasi | Pantai | Gunung</p>
        <h1 class="hero-title">Habiskan waktu liburanmu<br> bersama dengan kami</h1>
        <p class="hero-subtitle">Akomodasi</p>
    </div>

    <!-- Cards Section -->
    <div class="container mt-5">
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card text-center">
                    <img src="image/BG rinjani.png" class="card-img-top" alt="Gunung Rinjani">
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="rinjani.jsp" style="text-decoration: none; color: inherit;">Gunung Rinjani</a>
                        </h5>
                        <p class="card-text">Sembalun, Lombok Timur</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <img src="image/pinkBeach.png" class="card-img-top" alt="Pantai Pink">
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="pink.jsp" style="text-decoration: none; color: inherit;">Pink Beach</a>
                        </h5>
                        <p class="card-text">Sekaroh, Lombok Timur</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <img src="image/gili.png" class="card-img-top" alt="Pantai Pink">
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="gili.jsp" style="text-decoration: none; color: inherit;">Gili Trawangan</a>
                        </h5>
                        <p class="card-text">Pemenang, Lombok Utara</p>
                    </div>
                </div>
            </div>
        

