/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package interfaces;

/**
 *
 * @author naufa
 */
public interface PaymentGateway {
    boolean processPayment(double amount, String method);
    String getPaymentStatus();
    void generateReceipt();    
}
