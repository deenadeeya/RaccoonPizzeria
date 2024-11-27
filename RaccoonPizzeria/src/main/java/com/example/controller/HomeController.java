package com.example.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class HomeController {
 // Mapping for About Page
 @RequestMapping("/about")
 public String about(@RequestParam("name") String name,
 @RequestParam("customerId") String customerId,
 Model model) {
 model.addAttribute("message", "Learn more about us on this page.");
 model.addAttribute("name", name);
 model.addAttribute("customerId", customerId);
 return "about";
 }
 // Mapping for Contact Page
 @RequestMapping("/contact")
 public String contact(@RequestParam("name") String name,
 @RequestParam("customerId") String customerId,
 Model model) {
 model.addAttribute("message", "Get in touch with us through this page.");
 model.addAttribute("name", name);
 model.addAttribute("customerId", customerId);
 return "contact";
 }
 // Mapping for Index Page to display the form
 @RequestMapping("/index")
 public String index() {
 return "index";
 }
 // Mapping for Profile Page to display customer info, with URL parameters for data transfer
 @RequestMapping("/profile")
 public String profile(@RequestParam("name") String name,
 @RequestParam("customerId") String customerId,
 Model model) {
 // Add parameters to model to display on the profile page
 model.addAttribute("name", name);
 model.addAttribute("customerId", customerId);
 return "profile";
 }
}