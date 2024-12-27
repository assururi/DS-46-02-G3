<%-- 
    Document   : index
    Created on : Dec 20, 2024, 1:19:43 PM
    Author     : naufa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            body {
                background-image: url('img/Bg_Island.jpg'); 
                background-size: cover; 
                background-position: center; 
                background-repeat: no-repeat; 
                height: 100vh; 
                margin: 0; 
                display: flex;
                align-items: center; 
                justify-content: center;
                font-weight: bold;
            }
            
            .button {
                display: inline-block;
                padding: 10px 20px; 
                font-size: 20px; 
                color: white; 
                background-color: rgba(0 0 0 / 0.5); 
                text-decoration: none; 
                border-radius: 5px; 
                border: none; 
                cursor: pointer; 
                margin: 10px; 
            }
            .Icon {
                display: flex;
                color: white;
                align-items: center;
                gap: 10px; /* Memberi jarak antara teks dan gambar */
            }

            .logo {
                width: 70px; /* Sesuaikan ukuran gambar */
                height: 70px; /* Sesuaikan ukuran gambar */
                object-fit: cover; /* Pastikan gambar tidak terdistorsi */
            }
        </style> 
    </head>
    
    <body>
        <a href="HalamanAdmin/admin_dashboard.jsp" class="button">Admin</a>
        <a href="HalamanUmum/login.jsp" class="button">Pelanggan</a>
        <h3 class="Icon">
            Selamat Datang
            <img src ="img/planeIcon.png" alt="Logo Pesawat" class="logo">
        </h3>
    </body>
        
</html>
