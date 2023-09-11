package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLCategoriesDao implements Categories {
    private Connection connection = null;

    public MySQLCategoriesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    private String extractCategory(ResultSet rs) throws SQLException {
        if (!rs.next()) {
            return null;
        }
        return rs.getString("category");
    }

    private long extractCategoryId(ResultSet rs) throws SQLException {
        if (!rs.next()) {
            return -1;
        }
        return rs.getLong("id");

    }

    public long getIdByCategory(String category) {
        String query = "SELECT * FROM category WHERE category = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, category);
            long catId = extractCategoryId(stmt.executeQuery());
            return catId;
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    public static void main(String[] args) {
        MySQLCategoriesDao categoriesDao = new MySQLCategoriesDao(new Config());
        long categoryId = categoriesDao.getIdByCategory("Antique Artifacts");
        System.out.println(categoryId);
    }
    public String getCategoryById(String category_id) {
        String query = "SELECT * FROM category WHERE id = ? LIMIT 1";
        String category;
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, category_id);
            category = extractCategory(stmt.executeQuery());
            return category;
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }
}
