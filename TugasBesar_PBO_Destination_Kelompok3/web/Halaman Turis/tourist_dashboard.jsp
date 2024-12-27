<%-- 
    Document   : tourist_dashboard
    Created on : Dec 20, 2024, 1:14:21 PM
    Author     : naufa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tourist Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand" href="#">Tourist Portal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="destinations.jsp">Destinations</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="my-tickets.jsp">My Tickets</a>
                    </li>
                </ul>
                <div class="navbar-nav ms-auto">
                    <form action="../LogoutServlet" method="post" class="d-inline">
                        <button type="submit" class="btn btn-outline-light">Logout</button>
                    </form>
                </div>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <h2>Welcome, ${user.username}!</h2>
        
        <div class="row mt-4">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h4>Popular Destinations</h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <c:forEach items="${popularDestinations}" var="destination">
                                <div class="col-md-6 mb-3">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">${destination.namaDestinasi}</h5>
                                            <p class="card-text">${destination.deskripsiDestinasi}</p>
                                            <p class="card-text"><strong>Price: Rp ${destination.harga}</strong></p>
                                            <a href="book-ticket.jsp?id=${destination.idDestinasi}" 
                               class="btn btn-primary">Book Now</a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4>My Recent Tickets</h4>
                    </div>
                    <div class="card-body">
                        <c:forEach items="${recentTickets}" var="ticket">
                            <div class="mb-3">
                                <h6>${ticket.tempatWisata.namaDestinasi}</h6>
                                <p class="text-muted">
                                    Date: ${ticket.tanggalKunjungan}<br>
                                    Status: ${ticket.statusPembayaran}
                                </p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
