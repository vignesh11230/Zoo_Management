<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Animals</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://static.vecteezy.com/system/resources/previews/000/370/032/original/vector-wild-animals-together-in-group.jpg'); /* Background image for the body */
            background-size: cover;
            background-position: center;
            color: #333;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: rgba(76, 175, 80, 0.8); /* Semi-transparent background to let some of the background image show through */
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        header img {
            width: 100px; /* Adjust size as needed */
            vertical-align: middle;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.7); /* More transparent white background */
            border-radius: 8px; /* Optional: Rounded corners */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3); /* Optional: Shadow for a lifted effect */
        }
        .btn-container {
            display: inline-block;
            background-size: cover;
            background-position: center;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
            padding: 30px; /* Adjust padding */
            margin: 30px 0; /* Adjust margin */
            text-align: center;
            color: white; /* Ensure text is visible */
            position: relative;
            overflow: hidden;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background color */
        }
        @keyframes slide {
            from {
                background-position: 0 0;
            }
            to {
                background-position: 100% 0;
            }
        }
        .btn-container {
            animation: slide 20s linear infinite;
        }
        .btn {
            display: inline-block;
            font-size: 20px; /* Font size */
            color: white;
            background-color: #4CAF50;
            padding: 15px 30px; /* Button padding */
            text-decoration: none;
            border-radius: 8px;
            margin: 5px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .additional-content {
            margin-top: 15px; /* Margin for additional content */
            font-size: 18px; /* Font size for additional content */
            color: #eee; /* Light color for contrast */
        }
    </style>
</head>
<body>
    
     <center>
        <div class="btn-container">
            <a href="animals" class="btn">View Animals</a>
            <div class="additional-content">
                <!-- Additional content can go here -->
            </div>
        </div>
    </center>
</body>
</html>
