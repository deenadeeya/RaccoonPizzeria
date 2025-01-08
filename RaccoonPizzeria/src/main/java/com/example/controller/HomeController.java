package com.example.controller;

import com.example.dao.UserDAO;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {

    @Autowired
    private UserDAO userDAO;

    // Mapping for Home Page
    @RequestMapping("/")
    public String home() {
        return "home"; // home.jsp
    }

    // Mapping for Registration Page (GET)
    @RequestMapping("/register")
    public String showRegistrationPage() {
        return "register"; // register.jsp
    }

    // Mapping for Registration Submission (POST)
    @RequestMapping("/register")
    public String handleRegistration(@RequestParam("phonenumberEmail") String emailOrPhone,
                                     @RequestParam("name") String name,
                                     @RequestParam("password") String password,
                                     Model model) {
        if (userDAO.userExists(emailOrPhone)) {
            model.addAttribute("error", "User already exists!");
            return "register";
        }

        User user = new User(emailOrPhone, name, password);
        if (userDAO.registerUser(user)) {
            model.addAttribute("success", "Registration successful! Please login.");
            return "redirect:/login"; // Redirect to login.jsp
        } else {
            model.addAttribute("error", "Registration failed! Try again.");
            return "register";
        }
    }

    // Mapping for Login Page (GET)
    @RequestMapping("/login")
    public String showLoginPage() {
        return "login"; // login.jsp
    }

    // Mapping for Login Submission (POST)
    @RequestMapping("/login")
    public String handleLogin(@RequestParam("phonenumberEmail") String emailOrPhone,
                              @RequestParam("password") String password,
                              Model model) {
        if (userDAO.authenticateUser(emailOrPhone, password)) {
            String userName = userDAO.getUserName(emailOrPhone);
            model.addAttribute("name", userName);
            return "profile"; // Redirect to profile.jsp
        } else {
            model.addAttribute("error", "Invalid email/phone or password!");
            return "login"; // Stay on login.jsp
        }
    }

    // Mapping for Profile Page
    @RequestMapping("/profile")
    public String profile(@RequestParam("name") String name, Model model) {
        model.addAttribute("name", name);
        return "profile"; // profile.jsp
    }
}
