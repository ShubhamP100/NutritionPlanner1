package com.grownited.controller.admin;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepo;

import jakarta.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
@Controller
public class AdminController {
	
	@Autowired
	UserRepo repositoryUser;

	@GetMapping("admindashboard")
	public String adminDashboard() {
		return "Admindashboard";
	}
	@GetMapping("adminhome")
	public String adminhome() {
		return "Home";
	}
	@GetMapping("nutrionist")
		public String Nutrionist() {
			return "Nutrionist";
		}
	
	//AdminProfile
	/*
	  @GetMapping("adminprofile")
	    public String adminprofile(HttpSession session) {
		//session.invalidate();
		
		return "Profile";
		
	}*/

		//return "Profile";
	
	
	@GetMapping("viewuser")
	public String viewuser(Integer userId , Model modeluser) {
		System.out.println("ID==>"+ userId );
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(op.isEmpty()) {
			//not found
			
		} else {
			//found
			UserEntity user = op.get();
			modeluser.addAttribute("user", user);
		}
		
		return "ViewUser";	
	}
	
	@GetMapping("deleteuser")
	public String deleteuser( Integer userId) {
		repositoryUser.deleteById(userId);
		
	    return "redirect:/newusers";
	}
	@GetMapping("edituser")
	public String editVehicle(Integer userId,Model model) {
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if (op.isEmpty()) { 
			return "redirect:/newusers";
		} else {
			model.addAttribute("user",op.get());
			return "EditUser";

		}
	}
	
	@PostMapping("updateuser")
	public String updateuser(UserEntity entityuser , int id) { // pass the 2 arguments id & entityuser
		
		System.out.println("User ID"+ entityuser.getUserId());//id? db? 

		Optional<UserEntity> op = repositoryUser.findById(id); // find the id in the userEntityt database -> by findByd method
		
		if(op.isPresent()) // If it is present 
		{
			UserEntity dbuser = op.get(); //  
			dbuser.setFirstName(entityuser.getFirstName());
			dbuser.setLastname(entityuser.getLastname());
			dbuser.setCity(entityuser.getCity());
			dbuser.setEmail(entityuser.getEmail());
			dbuser.setRole(entityuser.getRole());
			repositoryUser.save(dbuser);
		}
		return "redirect:/newusers";
	}
	
	}

