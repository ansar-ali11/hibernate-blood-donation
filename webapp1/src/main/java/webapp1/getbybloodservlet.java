package webapp1;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@WebServlet("/getbyblood")
public class getbybloodservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bloodgroup = req.getParameter("bloodgroup");
        String city = req.getParameter("city");

        // Validate that the parameters are not null or empty
        if (bloodgroup == null || city == null || bloodgroup.trim().isEmpty() || city.trim().isEmpty()) {
            req.setAttribute("error", "Both blood group and city are required.");
            req.getRequestDispatcher("/bloodrequest.jsp").forward(req, resp);
            return;
        }

        
        StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
        Metadata md = new MetadataSources(ssr).getMetadataBuilder().build();
        SessionFactory sf = md.buildSessionFactory();
        Session s = sf.openSession();
        Transaction t = s.beginTransaction();

        try {
            List<bloodgrp> donors = s.createQuery("FROM bloodgrp WHERE bloodgroup = :bloodgroup AND city = :city", bloodgrp.class)
                    .setParameter("bloodgroup", bloodgroup)
                    .setParameter("city", city)
                    .list();

            // Commit the transaction
            t.commit();

            // If no donors are found, send a message
            if (donors.isEmpty()) {
                req.setAttribute("message", "No donors found for the specified blood group and city.");
            } else {
                // Pass the list of donors to the JSP page
                req.setAttribute("donors", donors);
            }

            // Forward the request to the results page
            req.getRequestDispatcher("/results.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "An error occurred while retrieving data.");
            req.getRequestDispatcher("/bloodrequest.jsp").forward(req, resp);
        } finally {
            // Ensure that session is closed
            s.close();
        }
    }
}
