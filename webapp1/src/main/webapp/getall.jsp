<%@page import="webapp1.register"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.boot.MetadataSources"%>
<%@page import="org.hibernate.boot.MetadataBuilder"%>
<%@page import="org.hibernate.boot.Metadata"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0e0e0;
        }

        h2 {
            text-align: center;
            font-size: 28px;
            color: #333;
            margin-bottom: 30px;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
        }

        .btn-back {
            display: inline-block;
            padding: 10px 20px;
            margin: 20px 0;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            text-decoration: none;
            font-size: 16px;
        }

        .btn-back:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee Registration List</h2>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Phone Number</th>
                </tr>
            </thead>
            <tbody>
                <%
                    StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
                    Metadata md = new MetadataSources(ssr).getMetadataBuilder().build();
                    SessionFactory sf = md.buildSessionFactory();
                    Session s = sf.openSession();
                    Transaction t = s.beginTransaction();

                    List<register> li = s.createQuery("from register", register.class).list();
                    t.commit();

                    for (register r : li) {
                %>

                <tr>
                    <td><%= r.getId() %></td>
                    <td><%= r.getName() %></td>
                    <td><%= r.getEmail() %></td>
                    <td><%= r.getPassword() %></td>
                    <td><%= r.getPhonenumber() %></td>
                </tr>

                <%
                    }
                %>
            </tbody>
        </table>

        <a href="registration.jsp" class="btn-back">Back to Registration</a>
    </div>
</body>
</html>
