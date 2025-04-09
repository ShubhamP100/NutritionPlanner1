/*
 Here in this controller 
 
 */





package com.grownited.controller;
import java.util.List;
import com.grownited.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.entity.RegesterEntity;
import com.grownited.repository.RegisterUser;
import org.springframework.ui.Model;
import jakarta.servlet.http.HttpSession;

@Controller
public class RegisterUserController {
     //getmapping
	
	@Autowired
	RegisterUser useregister; 
	
	@Autowired 
	UserRepo repouser;
	 
	
	@GetMapping("newuser")
	public String registeruser(HttpSession session,Model model) {
		
		UserEntity user = (UserEntity) session.getAttribute("user");
	    if(user==null) {
	    	return "redirect:/login";
	    }
		
		model.addAttribute("user",user);
		return "NewUser";
	}

//	savevehicle 
	@PostMapping("saveuserss")
	public String saveUser(RegesterEntity entityRegister,HttpSession session) {
		//UserEntity user= (UserEntity) session.getAttribute("user");
		
		
		useregister.save(entityRegister);
	
		

		return "redirect:/newusers";// jsp name
		
		/*
		 Infuture -> 
		 */
	}
	//Model is used to pass the data from controller to jsp
	//Below the list   
	@GetMapping("newusers") 
	public String registerUser(Model model) {
		List<UserEntity>  listUser = repouser.findAll(); // select * writes the sql query to display the data 
		//findall method is used to display the data of the user from the database
		model.addAttribute("listUser",  listUser);
		return "ListUser";
	}
	

    // 👇 User profile with register info
	/*
    @GetMapping("/profile")
    public String showUserProfile(@RequestParam("userId") Integer userId, Model model) {
        UserEntity user = repouser.findById(userId).orElse(null);
        RegesterEntity reg = useregister.findByUserId(userId);

        model.addAttribute("user", user);
        model.addAttribute("regDetails", reg);
        return "user-profile"; // JSP to display full profile
    }
    */
	
	
	
	 


   
}
