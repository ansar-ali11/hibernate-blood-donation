<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation & Request</title>
    <style>
        /* Resetting default styles */
        body, h1, p, form, nav {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/free-photo/red-blood-drops-close-up-top-view_1150-14525.jpg') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            height: 100vh;
            color: #fff;
            padding: 0 20px;
            overflow-y:hidden;
        }

        /* Main Section */
        h1 {
            font-size: 45px;
            margin-top: 90px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        p {
            font-size: 18px;
            margin-bottom: 40px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        /* Form Container Styles */
        .form-container {
             background: linear-gradient(to bottom, #C62828, #D32F2F, #FF8F00, #FFCCBC);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 400px;
            height: auto;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container h2 {
            font-size: 24px;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
            box-sizing: border-box;
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .btn {
            padding: 12px 25px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .btn-secondary {
            background-color: red;
        }

        .btn-secondary:hover {
            background-color: #0056b3;
        }

        /* Flexbox Layout for side-by-side sections */
        .main-content {
            display: flex;
            justify-content: center;
            width: 100%;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 20px;
        }

        /* Media Query for responsiveness */
        @media (max-width: 768px) {
            .main-content {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>
    <!-- Main Content -->
    <h1>Blood Donation & Request</h1>
    <p>Join us in saving lives through blood donation!</p>

    <div class="main-content">
        <!-- Donation Section -->
        <div class="form-container">
            <h2>Donate Blood</h2>
            <form action="registerbg" method="post">
                <input type="text" name="name" class="input-field" placeholder="Your Name" required>
                <input type="text" name="bloodgroup" class="input-field" placeholder="Blood Group (e.g., O+, A-)" required>
                <input type="text" name="city" class="input-field" placeholder="Your City" required>
                <input type="tel" name="phonenumber" class="input-field" placeholder="Phone Number" required>
                <div class="button-container">
                    <button type="submit" class="btn">Donate Now</button>
                </div>
            </form>
        </div>

        <!-- Request Section -->
        <div class="form-container">
            <h2>Request Blood</h2>
            <form action="getbyblood" method="post">
                <input type="text" name="bloodgroup" class="input-field" placeholder="Blood Group Needed" required>
                <input type="text" name="city" class="input-field" placeholder="City" required>
                <div class="button-container">
                    <button type="submit" class="btn btn-secondary">Request Blood</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
