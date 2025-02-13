package com.zoo.servlets;

import java.io.IOException; 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/addAnimal")
public class AddAnimalServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String species = request.getParameter("species");
        String ageStr = request.getParameter("age");
        String habitat = request.getParameter("habitat");

        if (name == null || name.isEmpty() ||
            species == null || species.isEmpty() ||
            ageStr == null || ageStr.isEmpty() ||
            habitat == null || habitat.isEmpty()) {
            response.sendRedirect("addAnimal.jsp?status=error&message=All fields are required");
            return;
        }

        int age;
        try {
            age = Integer.parseInt(ageStr);
        } catch (NumberFormatException e) {
            response.sendRedirect("addAnimal.jsp?status=error&message=Age must be a number");
            return;
        }

        Connection con = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ZooDB", "root", "amosvignesh11230VA@");

            String query = "INSERT INTO Animals (name, species, age, habitat) VALUES (?, ?, ?, ?)";
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, species);
            ps.setInt(3, age);
            ps.setString(4, habitat);
            ps.executeUpdate();
            System.out.println("completed success");
            response.sendRedirect("index.html");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("addAnimal.jsp?status=error&message=Database error");
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
