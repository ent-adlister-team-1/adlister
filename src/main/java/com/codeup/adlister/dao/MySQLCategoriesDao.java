package com.codeup.adlister.dao;

import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

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

    }
