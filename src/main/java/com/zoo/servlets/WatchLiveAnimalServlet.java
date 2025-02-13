package com.zoo.servlets;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class WatchLiveAnimalServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        List<LiveFeed> liveFeeds = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ZooDB", "root", "amosvignesh11230VA@");

            String query = "SELECT * FROM LiveFeeds";
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                int id = rs.getInt("id");
                String animalName = rs.getString("animal_name");
                String feedURL = rs.getString("feed_url");
                
                LiveFeed liveFeed = new LiveFeed(id, animalName, feedURL);
                liveFeeds.add(liveFeed);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("liveFeeds", liveFeeds);
        RequestDispatcher dispatcher = request.getRequestDispatcher("watchLiveAnimals.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public class LiveFeed {
        private int id;
        private String animalName;
        private String feedURL;

        public LiveFeed(int id, String animalName, String feedURL) {
            this.id = id;
            this.animalName = animalName;
            this.feedURL = feedURL;
        }

        public int getId() {
            return id;
        }

        public String getAnimalName() {
            return animalName;
        }

        public String getFeedURL() {
            return feedURL;
        }
    }
}
