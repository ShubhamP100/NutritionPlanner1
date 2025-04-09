package com.grownited.controller.User;

import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;
import org.springframework.ui.Model;
import com.grownited.entity.*;
public class UserController {

	
	@GetMapping("/home")
	public String userHome(HttpSession session, Model model) {
	    UserEntity user = (UserEntity) session.getAttribute("user");
	    if (user == null) return "redirect:/login";

	    model.addAttribute("user", user);
	    return "Home"; // JSP name (userhome.jsp)
	}
	
}
