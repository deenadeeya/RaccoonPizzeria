package com.example.controller;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;

import com.example.model.MenuItem;
@Controller
public class MenuController {

	@RequestMapping("/menu")
	public String showMenu(Model model) {
	    // Define menu items with proper image paths
	    List<MenuItem> pizzas = Arrays.asList(
	        new MenuItem("Cheesy Beef Pepperoni", "PIZZAS", "/images/pizzas/cheesy_beef.jpg", 12.99),
	        new MenuItem("Chicken Veggie", "PIZZAS", "/images/pizzas/chicken_veggie.jpg", 11.49),
	        new MenuItem("Classic Mozzarella", "PIZZAS", "/images/pizzas/classic_mozzarella.jpg", 10.99),
	        new MenuItem("Original Italian", "PIZZAS", "/images/pizzas/original_italian.jpg", 9.99),
	        new MenuItem("Beef Veggie", "PIZZAS", "/images/pizzas/beef_veggie.jpg", 11.99),
	        new MenuItem("Pop-Up Chicken", "PIZZAS", "/images/pizzas/pop_up_chicken.jpg", 13.49)
	    );

	    List<MenuItem> sides = Arrays.asList(
	        new MenuItem("French Fries", "SIDES", "/images/sides/french_fries.jpg", 3.99),
	        new MenuItem("Jerky Cheese Fries", "SIDES", "/images/sides/cheese_fries.jpg", 4.49),
	        new MenuItem("Nuggets", "SIDES", "/images/sides/nuggets.jpg", 5.99)
	    );

	    List<MenuItem> drinks = Arrays.asList(
	        new MenuItem("Grape Soda", "DRINKS", "/images/drinks/grape_soda.jpg", 2.99),
	        new MenuItem("Strawberry Soda", "DRINKS", "/images/drinks/strawberry_soda.jpg", 2.99),
	        new MenuItem("Orange Soda", "DRINKS", "/images/drinks/orange_soda.jpg", 2.99)
	    );

	    // Pass data to the JSP
	    model.addAttribute("pizzas", pizzas);
	    model.addAttribute("sides", sides);
	    model.addAttribute("drinks", drinks);

	    return "menu"; // Serves menu.jsp
	}

	}