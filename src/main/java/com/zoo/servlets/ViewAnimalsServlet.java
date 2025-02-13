package com.zoo.servlets;

import java.io.IOException;  
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/animals")
public class ViewAnimalsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	PrintWriter out=response.getWriter();
     

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoodb", "root", "amosvignesh11230VA@");
            String sql = "SELECT * FROM animals";
            Statement stmt =  con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String name = rs.getString("name");
                String species = rs.getString("species");
                int age = rs.getInt("age");
                String habitat = rs.getString("habitat");
                out.println(name+species+age+habitat);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
//        } finally {
//            try {
//                if (rs != null) rs.close();
//                if (stmt != null) stmt.close();
//                if (conn != null) conn.close();
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
       // request.getRequestDispatcher("viewAnimals.jsp").forward(request, response);
        }

//        request.setAttribute("animals", animals);
//        request.getRequestDispatcher("viewAnimals.jsp").forward(request, response);
    }

