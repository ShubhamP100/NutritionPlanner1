package com.grownited.controller.Nutrionist;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.beans.factory.annotation.Autowired;
import com.grownited.repository.Foodrepo;
import com.grownited.entity.*;
import java.util.*;
import org.springframework.ui.Model;
@Controller
public class FoodController {

	@Autowired
    Foodrepo repofood;  	
	@GetMapping("fooditems")
	
	public String fooditems(Model model){
		//model.addAttribute("fooitem", model)
	   List<FoodEntity> foods = repofood.findAll();
		model.addAttribute("fooitem", foods);
		return "Nutrionist/Foodcard";
	}
	
	
	
}
