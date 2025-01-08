package com.example.controller;

import com.example.model.Cart;
import com.example.model.MenuItem;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/cart")
public class CartController {
    private Cart cart = new Cart(); // Initialize the cart object

    // Mapping for viewing the cart (GET request)
    @RequestMapping("/view")
    public String viewCart(Model model) {
        // Add the cart to the model
        model.addAttribute("cart", cart);
        return "cart"; // Return the cart.jsp view
    }

    // Mapping for adding an item to the cart (POST request)
    @RequestMapping("/add")
    public String addItem(
            @RequestParam("name") String name,
            @RequestParam("category") String category,
            @RequestParam("imagePath") String imagePath,
            @RequestParam("price") double price,
            @RequestParam("quantity") int quantity,
            Model model) {
        // Create a new MenuItem and add it to the cart
        MenuItem item = new MenuItem(name, category, imagePath, price);
        cart.addItem(item, quantity);

        // Add a success message and updated cart to the model
        model.addAttribute("message", "Item added to cart successfully!");
        model.addAttribute("cart", cart);

        return "cart"; // Return the cart.jsp view
    }

    // Mapping for clearing the cart (optional functionality)
    @RequestMapping("/clear")
    public String clearCart(Model model) {
       // cart.clear(); // Clear all items from the cart NOT DEFINED YET
        model.addAttribute("message", "Cart cleared successfully!");
        model.addAttribute("cart", cart);
        return "cart"; // Return the cart.jsp view
    }
}





























/* package com.example.controller;

import com.example.model.Cart;
import com.example.model.MenuItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@RequestMapping("/cart")
public class CartController extends HttpServlet {
    private Cart cart;

    @Override
    public void init() throws ServletException {
        cart = new Cart();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String imagePath = request.getParameter("imagePath");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

     
        response.sendRedirect("cart");
    }
}


//  MenuItem item = new MenuItem(name, category, imagePath, price);
//  cart.addItem1(item, quantity);

*/