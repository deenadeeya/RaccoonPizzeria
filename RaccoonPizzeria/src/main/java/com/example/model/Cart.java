package com.example.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<MenuItem> items;
    private List<Integer> quantities; // To track quantities of each item
    private double deliveryFee;

    public Cart() {
        this.items = new ArrayList<>();
        this.quantities = new ArrayList<>();
        this.deliveryFee = 5.0; // Default delivery fee
    }

    public void addItem(MenuItem item, int quantity) {
        if (items.contains(item)) {
            int index = items.indexOf(item);
            quantities.set(index, quantities.get(index) + quantity);
        } else {
            items.add(item);
            quantities.add(quantity);
        }
    }

    public void removeItem(MenuItem item) {
        int index = items.indexOf(item);
        if (index >= 0) {
            items.remove(index);
            quantities.remove(index);
        }
    }

    public List<MenuItem> getItems() {
        return items;
    }

    public List<Integer> getQuantities() {
        return quantities;
    }

    public double getSubtotal() {
        double subtotal = 0;
        for (int i = 0; i < items.size(); i++) {
   
          subtotal += items.get(i).getPrice() * quantities.get(i); 
        }
        return subtotal;
    }

    public double getDeliveryFee() {
        return deliveryFee;
    }

    public double getTotal() {
        return getSubtotal() + deliveryFee;
    }
    
    
    public void clear() {
        items.clear();
        quantities.clear();
    }


}



/* ###########SAMPLE CODE##############

// Constructor
    public Cart(List<CartItem> items, double deliveryFee) {
        this.items = items;
        this.deliveryFee = deliveryFee;
    }

    // Getters and Setters
    public List<CartItem> getItems() {
        return items;
    }

    public void setItems(List<CartItem> items) {
        this.items = items;
    }

    public double getDeliveryFee() {
        return deliveryFee;
    }

    public void setDeliveryFee(double deliveryFee) {
        this.deliveryFee = deliveryFee;
    }

    // Calculate subtotal (sum of all items' total prices)
    public double getSubtotal() {
        double subtotal = 0;
        for (CartItem item : items) {
            subtotal += item.getTotalPrice();
        }
        return subtotal;
    }

    // Calculate grand total (subtotal + delivery fee)
    public double getTotal() {
        return getSubtotal() + deliveryFee;
    }
}






*/