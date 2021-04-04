
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
@WebServlet("/bank")
public class BankServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String accountNumber = request.getParameter("accountNumber");
            String paymentId = request.getParameter("paymentId");
            String routingNumber = request.getParameter("routingNumber");
            String accountType = request.getParameter("accountType");

            DBConnect dbConnect = new DBConnect();
            String sql = "INSERT INTO freelancer.bank_payment_details (account_number, routing_number, account_type, payment_id)\n"
                    + "VALUES('"+ accountNumber + "', '"+ routingNumber +"', '"+accountType+"', '"+paymentId+"');";
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
