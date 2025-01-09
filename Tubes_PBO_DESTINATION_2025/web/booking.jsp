<%-- 
    Document   : booking.jsp
    Created on : Jan 3, 2025, 5:29:52 PM
    Author     : MSI GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buat Pesanan - Wonderful NTB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('image/pinkBeach.png'); 
            background-size: cover;
            background-position: center;
            color: white;
        }
        .form-section {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .form-title {
            font-size: 2rem;
            font-weight: bold;
            color:black;
        }
        .form-label {
            color:black; 
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center" style="height: 80vh;">
        <div class="form-section text-center">
            <h2 class="form-title mb-4">Buat Pesanan</h2>
            <form class="row g-3" action="BookingServlet" method="post">
                <!-- Dropdown Akomodasi -->
                <div class="col-md-6">
                    <label for="destinationId" class="form-label">Akomodasi</label>
                    <select id="destinationId" name="destinationId" class="form-select">
                        <option value="Gunung Rinjani">Gunung Rinjani</option>
                        <option value="Pantai Pink">Pantai Pink</option>
                        <option value="Gili Trawangan">Gili Trawangan</option>
                    </select>
                </div>
                <!-- Input Tanggal -->
                <div class="col-md-6">
                    <label for="bookingDate" class="form-label">Tanggal Pemesanan</label>
                    <input type="date" id="bookingDate" name="bookingDate" class="form-control" required>
                </div>
                <!-- Tombol Pesan -->
                <div class="col-12">
                    <button type="submit" class="btn btn-primary w-100">Pesan</button>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>