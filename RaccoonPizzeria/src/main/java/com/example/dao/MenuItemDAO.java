package com.example.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

import com.example.model.MenuItem;


@Repository
public class MenuItemDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/raccoonpizzeria_db"; 
    private String jdbcUsername = "root"; 
    private String jdbcPassword = ""; 
    
    static {
        // Load MySQL JDBC driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("MySQL JDBC Driver successfully loaded.");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        }
    }
   
    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }


    public List<MenuItem> getPizzas() {
        List<MenuItem> items = new ArrayList<>();
        String query = "SELECT * FROM pizzas";
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	MenuItem item = new MenuItem();
            	item.setName(rs.getString("name"));
                item.setCategory(rs.getString("category"));
                item.setImagePath(rs.getString("imagepath"));
                item.setPrice(rs.getDouble("price"));
                items.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return items;
    }
    public List<MenuItem> getSides() {
        List<MenuItem> items = new ArrayList<>();
        String query = "SELECT * FROM sides";
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	MenuItem item = new MenuItem();
                item.setName(rs.getString("name"));
                item.setCategory(rs.getString("category"));
                item.setImagePath(rs.getString("imagepath"));
                item.setPrice(rs.getDouble("price"));
                items.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return items;

    }
    
    public List<MenuItem> getDrinks() {
        List<MenuItem> items = new ArrayList<>();
        String query = "SELECT * FROM drinks";
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	MenuItem item = new MenuItem();
            	item.setName(rs.getString("name"));
                item.setCategory(rs.getString("category"));
                item.setImagePath(rs.getString("imagepath"));
                item.setPrice(rs.getDouble("price"));
                items.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return items;
    }
}