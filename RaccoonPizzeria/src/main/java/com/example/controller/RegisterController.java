package com.example.controller;

import com.example.dao.UserDAO;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private HttpSession session;

    // Use RequestMapping to handle GET request for the registration page
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegisterPage() {
        return "register";  // Return the register.jsp view (without leading slash)
    }

    // Use RequestMapping to handle POST request for form submission
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUser(
            @RequestParam("phonenumberEmail") String emailOrPhone,
            @RequestParam("name") String name,
            @RequestParam("password") String password,
            @RequestParam("confirmPassword") String confirmPassword,
            Model model) {

        // Validation
        if (!password.equals(confirmPassword)) {
            model.addAttribute("error", "Passwords do not match!");
            return "register";  // Show the register page again with error (without leading slash)
        }

        if (userDAO.userExists(emailOrPhone)) {
            model.addAttribute("error", "User already exists!");
            return "register";  // Show the register page again with error (without leading slash)
        }

        User user = new User(emailOrPhone, name, password);
        boolean isRegistered = userDAO.registerUser(user);

        if (isRegistered) {
            session.setAttribute("user", user);
            return "redirect:/login";  // Redirect to login page after successful registration
        } else {
            model.addAttribute("error", "Registration failed. Please try again.");
            return "register";  // Show the register page again with error (without leading slash)
        }
    }
}
