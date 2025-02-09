<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You for Donating Blood!</title>
    <style>
        /* Reset some default styles */
        body, h1, p, div {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/free-photo/young-woman-smiling-blood-donation_1150-12919.jpg') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            padding: 20px;
            overflow-y:hidden;
        }

        .thank-you-container {
            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 80%;
            max-width: 600px;
        }

        .thank-you-container h1 {
            font-size: 40px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .thank-you-container p {
            font-size: 20px;
            line-height: 1.6;
        }

        .thank-you-container .highlight {
            color: #ff4e50; /* A red accent for emphasis */
            font-weight: bold;
        }

        .footer {
            position: absolute;
            bottom: 20px;
            width: 100%;
            text-align: center;
            font-size: 16px;
            color: white;
        }

        .footer a {
            color: #ff4e50;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="thank-you-container">
        <h1>Thank You for Donating Blood!</h1>
        <p>Your generous donation is helping save lives. You are making a huge difference in someone's life, and we are truly grateful.</p>
        <p><span class="highlight">Every donation counts.</span> Your action today is a beacon of hope for those in need of blood transfusions. Thank you for being a hero!</p>
    </div>

    <div class="footer">
        <p>Interested in donating again? <a href="donate-now.jsp">Donate Now</a></p>
    </div>

</body>
</html>
