<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Animal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h1 {
            color: #5A9;
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-top: 10px;
            font-weight: bold;
        }
        input[type="text"] {
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }
        input[type="submit"] {
            margin-top: 20px;
            padding: 10px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .message {
            text-align: center;
            margin-top: 20px;
        }
        .error {
            color: red;
        }
        .success {
            color: green;
        }
    </style>
    <script>
        function validateForm() {
            const name = document.getElementById("name").value.trim();
            const species = document.getElementById("species").value.trim();
            const age = document.getElementById("age").value.trim();
            const habitat = document.getElementById("habitat").value.trim();

            if (name === "" || species === "" || age === "" || habitat === "") {
                alert("All fields are required.");
                return false;
            }

            if (isNaN(age)) {
                alert("Age must be a number.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Add Animal</h1>
        <form action="addAnimal" method="post" onsubmit="return validateForm();">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
            
            <label for="species">Species:</label>
            <input type="text" id="species" name="species">
            
            <label for="age">Age:</label>
            <input type="text" id="age" name="age">
            
            <label for="habitat">Habitat:</label>
            <input type="text" id="habitat" name="habitat">
            
            <input type="submit" value="Submit">
        </form>

        <div class="message">
            <%
                String status = request.getParameter("status");
                String message = request.getParameter("message");
                if ("error".equals(status) && message != null) {
            %>
                <p class="error"><%= message %></p>
            <%
                } else if ("success".equals(status) && message != null) {
            %>
                <p class="success"><%= message %></p>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
