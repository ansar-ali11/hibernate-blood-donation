package webapp1;

import java.io.IOException;

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

@WebServlet("/registerbg")
public class bloodregisterservlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String bloodgroup=req.getParameter("bloodgroup");
		String city=req.getParameter("city");
		long phonenumber=Long.parseLong(req.getParameter("phonenumber"));
		
		StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata md=new MetadataSources(ssr).getMetadataBuilder().build();
		SessionFactory sf=md.buildSessionFactory();
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		
		bloodgrp bg=new bloodgrp();
		
		bg.setName(name);
		bg.setBloodgroup(bloodgroup);
		bg.setCity(city);
		bg.setPhonenumber(phonenumber);
		
		s.save(bg);
		
		t.commit();
		
		resp.sendRedirect("thankyou.jsp");
		
		System.out.println("data registered succussfully");
	}
}
