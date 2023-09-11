
package com.codeup.adlister.controllers;

import com.codeup.adlister.models.Ad;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {



            protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
                String searchTerm = request.getParameter("searchTerm");

                // Database connection settings
                String url = "jdbc:mysql://localhost:3306/jeremysangels_adlister_db";
                String username = "root";
                String password = "codeup";

                try {
                    // Load the MySQL JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Create a database connection
                    Connection conn = DriverManager.getConnection(url, username, password);

                    // Create a SQL query to search ads
                    // Create a SQL query to search ads by category or title
                    String selectedCategory = request.getParameter("searchTerm");
                    String selectedValue = request.getParameter("searchValue");

                    String sql;
                    PreparedStatement statement;
                    if(selectedCategory.equals("All")) {
                        sql = "SELECT * FROM ads";
                        statement = conn.prepareStatement(sql);
                    } else {
                        sql = "SELECT * FROM ads WHERE category LIKE ? UNION SELECT * FROM ads WHERE title LIKE ?";
                        statement = conn.prepareStatement(sql);
                        statement.setString(1, "%" + searchTerm + "%");
                        statement.setString(2, "%" + searchTerm + "%");
                    }


                    // Execute the query
                    ResultSet resultSet = statement.executeQuery();

            // Create a list to store the results
            List<Ad> ads = new ArrayList<>();

                    while (resultSet.next()) {
                        Ad ad = new Ad();
                        ad.setId(resultSet.getLong("id"));
                        ad.setTitle(resultSet.getString("title"));
                        ad.setCategory_id(resultSet.getString("category"));
                        ad.setTitle(resultSet.getString("title"));
                        ad.setDescription(resultSet.getString("description"));

                        ads.add(ad);
                    }

                    // Close database resources
                    resultSet.close();
                    statement.close();
                    conn.close();

                    // Store the search results in a request attribute
                    request.setAttribute("ads", ads);

                    // Forward to the index.jsp page to display the results
                    request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

        }
