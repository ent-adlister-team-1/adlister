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

    private Category extractCategory(ResultSet rs) throws SQLException {
        if (!rs.next()) {
            return null;
        }
        return new Category(
                rs.getString("category")

        );
    }

    private Category extractCategoryId(ResultSet rs) throws SQLException {
        if (!rs.next()) {
            return null;
        }
        return new Category(
                rs.getString("id")

        );
    }

    public long getIdByCategory(String category) {
        String query = "SELECT * FROM category WHERE category = ? LIMIT 1";
        try {
            Category newCategory;
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, category);
            newCategory = extractCategory(stmt.executeQuery());
            return newCategory.getId();
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    public String getCategoryById(String category_id) {
        String query = "SELECT * FROM category WHERE id = ? LIMIT 1";
        Category category;
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, category_id);
            category = extractCategory(stmt.executeQuery());
            return category.getName();
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }
}
