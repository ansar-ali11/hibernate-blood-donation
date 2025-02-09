<%@ page import="webapp1.bloodgrp" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Request Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        td {
            background-color: #fff;
        }
        .message {
            font-weight: bold;
            color: red;
        }
        .success-message {
            color: green;
        }
    </style>
</head>
<body>

    <h1>Blood Donor List</h1>
    
    <%
        // Check if the attribute "message" is set (No donors found or error messages)
        String message = (String) request.getAttribute("message");
        String error = (String) request.getAttribute("error");
        
        if (message != null) {
    %>
        <p class="message"><%= message %></p>
    <%
        } else if (error != null) {
    %>
        <p class="message"><%= error %></p>
    <%
        } else {
            // Get the list of donors and display it in a table
            List<bloodgrp> donors = (List<bloodgrp>) request.getAttribute("donors");
            if (donors != null && !donors.isEmpty()) {
    %>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Blood Group</th>
                    <th>City</th>
                    <th>Phone Number</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (bloodgrp donor : donors) {
                %>
                <tr>
                    <td><%= donor.getName() %></td>
                    <td><%= donor.getBloodgroup() %></td>
                    <td><%= donor.getCity() %></td>
                    <td><%= donor.getPhonenumber() %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    <%
            } else {
    %>
        <p class="message">No donors available for the selected blood group and city.</p>
    <%
            }
        }
    %>

</body>
</html>
