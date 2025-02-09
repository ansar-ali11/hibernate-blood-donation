<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Registration</title>
    <style>
        /* Basic styling for body and form container */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #333;
        }

        input[type="text"], 
        input[type="email"], 
        input[type="password"], 
        input[type="tel"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="text"]:focus, 
        input[type="email"]:focus, 
        input[type="password"]:focus, 
        input[type="tel"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        button[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }

        .form-container a {
            color: #4CAF50;
            text-decoration: none;
            font-size: 14px;
            margin-top: 10px;
            display: block;
        }

        .form-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form action="register" method="post" class="form-container">
        <h2>Employee Registration</h2>
        
        <input type="text" placeholder="Enter name" name="name" required><br>
        <input type="email" placeholder="Enter email" name="email" required><br>
        <input type="password" placeholder="Enter password" name="password" required><br>
        <input type="tel" placeholder="Enter phone number" name="phonenumber" required><br>
        
        <button type="submit">Register</button>    
    </form>
</body>
</html>
