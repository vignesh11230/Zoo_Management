<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book a Visit - Zoo Management System</title>
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            color: #333;
        }
        header {
            background: linear-gradient(to right, #43cea2, #185a9d);
            padding: 70px 20px;
            text-align: center;
            color: white;
        }
        header h1 {
            font-size: 3.5em;
            margin: 0;
            letter-spacing: 2px;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #2ecc71;
            padding: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        nav a {
            margin: 0 15px;
            text-decoration: none;
            color: white;
            font-weight: bold;
            transition: transform 0.3s ease, background-color 0.3s ease;
            padding: 10px 15px;
            border-radius: 5px;
        }
        nav a:hover {
            background-color: #fff;
            color: #2ecc71;
            transform: scale(1.1);
        }
        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .container h2 {
            font-size: 2.5em;
            color: #2ecc71;
            margin-bottom: 20px;
            text-transform: uppercase;
        }
        .container p {
            font-size: 1.2em;
            color: #555;
            line-height: 1.6;
            margin-bottom: 30px;
        }
        .booking-form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .booking-form input, .booking-form textarea, .booking-form button {
            margin: 10px 0;
            padding: 15px;
            border-radius: 5px;
            border: 1px solid #ddd;
            width: 100%;
            max-width: 600px;
        }
        .booking-form button {
            background-color: #2ecc71;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s ease;
        }
        .booking-form button:hover {
            background-color: #27ae60;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px 0;
            margin-top: 30px;
        }
        footer p {
            margin: 0;
            font-size: 1em;
        }
        footer .social-icons {
            margin-top: 15px;
        }
        footer .social-icons a {
            margin: 0 10px;
            color: white;
            text-decoration: none;
            font-size: 1.5em;
            transition: transform 0.3s ease, color 0.3s ease;
        }
        footer .social-icons a:hover {
            color: #43cea2;
            transform: scale(1.2);
        }
        @media (max-width: 768px) {
            nav {
                flex-direction: column;
            }
            nav a {
                margin-bottom: 10px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Book a Visit - Zoo Management System</h1>
    </header>

    <nav>
        <a href="addAnimal.jsp">Add Animal</a>
        <a href="viewAnimals.jsp">View Animals</a>
        <a href="vehicles.jsp">Vehicles</a>
        <a href="watchLive.jsp">Watch Live Animals</a>
        <a href="booking.jsp">Book a Visit</a>
        <a href="login.jsp">Login</a>
    </nav>

    <div class="container">
        <h2>Book Your Visit</h2>
        <p>Fill out the form below to book your visit to our zoo. We look forward to seeing you!</p>
        <form class="booking-form" action="BookingServlet" method="post">
            <input type="text" name="fullName" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email Address" required>
            <input type="tel" name="phoneNumber" placeholder="Phone Number" required>
            <input type="date" name="preferredDate" placeholder="Preferred Date" required>
            <textarea name="additionalInfo" rows="4" placeholder="Additional Information"></textarea>
            <button type="submit">Book Now</button>
        </form>
    </div>

    <footer>
        <p>&copy; 2024 Zoo Management System. All rights reserved.</p>
        <div class="social-icons">
            <a href="https://facebook.com" target="_blank">&#xf09a;</a>
            <a href="https://twitter.com" target="_blank">&#xf099;</a>
            <a href="https://instagram.com" target="_blank">&#xf16d;</a>
        </div>
    </footer>
</body>
</html>
