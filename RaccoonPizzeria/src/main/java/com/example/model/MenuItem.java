package com.example.model;

public class MenuItem {
    private String name;
    private String category;
    private String imagePath;
    private double price; // Added field for price

    // Constructor to initialize all fields, including the new price field
    public MenuItem(String name, String category, String imagePath, double price) {
        this.name = name;
        this.category = category;
        this.imagePath = imagePath;
        this.price = price;
    }

    // Getter for name
    public String getName() {
        return name;
    }

    // Setter for name
    public void setName(String name) {
        this.name = name;
    }

    // Getter for category
    public String getCategory() {
        return category;
    }

    // Setter for category
    public void setCategory(String category) {
        this.category = category;
    }

    // Getter for imagePath
    public String getImagePath() {
        return imagePath;
    }

    // Setter for imagePath
    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    // New Getter for price
    // This method returns the price of the menu item.
    public double getPrice() {
        return price;
    }

    // New Setter for price
    // This method allows setting or updating the price of the menu item.
    public void setPrice(double price) {
        this.price = price;
    }
}
