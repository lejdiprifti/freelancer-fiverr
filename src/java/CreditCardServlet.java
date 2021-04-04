
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import myBeans.DBConnect;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author core i5
 */
@WebServlet("/creditcard")
public class CreditCardServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String ccnumber = request.getParameter("creditCardNumber");
            String paymentId = request.getParameter("paymentId");
            String exp = request.getParameter("exp");
            String cvc = request.getParameter("cvc");

            DBConnect dbConnect = new DBConnect();
            String sql = "INSERT INTO freelancer.credit_card_payment_details (credit_card_number, expiration_date, cvc, payment_id) VALUES('"+ccnumber+"', '"+exp+"', '"+cvc+"', '"+paymentId+"');";
            dbConnect.updateDB(sql);
            response.setStatus(200);
        } catch (SQLException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.sendError(403, ex.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
