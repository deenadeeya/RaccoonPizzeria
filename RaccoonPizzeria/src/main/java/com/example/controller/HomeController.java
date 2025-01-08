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

    // Mapping for Home Page
    @RequestMapping("/login")
    public String login() {
        return "login"; // home.jsp
    }

    

    // Mapping for Profile Page
    @RequestMapping("/profile")
    public String profile(@RequestParam("name") String name, Model model) {
        model.addAttribute("name", name);
        return "profile"; // profile.jsp
    }
}
