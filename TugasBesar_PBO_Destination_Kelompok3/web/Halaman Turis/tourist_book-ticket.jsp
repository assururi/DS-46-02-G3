<%-- 
    Document   : tourist_book-ticket
    Created on : Dec 20, 2024, 1:14:38 PM
    Author     : naufa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Ticket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h3>Book Ticket - ${destination.namaDestinasi}</h3>
                    </div>
                    <div class="card-body">
                        <form action="BookTicketServlet" method="post">
                            <input type="hidden" name="destinationId" value="${destination.idDestinasi}">
                            
                            <div class="mb-3">
                                <label class="form-label">Visit Date</label>
                                <input type="date" name="visitDate" class="form-control" required>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">Number of Tickets</label>
                                <input type="number" name="quantity" min="1" value="1" class="form-control" required>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">Payment Method</label>
                                <select name="paymentMethod" class="form-select" required>
                                    <option value="CREDIT_CARD">Credit Card</option>
                                    <option value="BANK_TRANSFER">Bank Transfer</option>
                                    <option value="E_WALLET">E-Wallet</option>
                                </select>
                            </div>
                            
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-primary">Proceed to Payment</button>
                                <a href="destinations.jsp" class="btn btn-secondary">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>