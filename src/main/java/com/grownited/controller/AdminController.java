package com.grownited.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.Foodrepo;
import com.grownited.repository.GoalRepo;
import com.grownited.repository.UserRepo;
@Controller
public class AdminController {
	
	@Autowired
	UserRepo repositoryUser;
	
	@Autowired
	GoalRepo repogoal;
	
	@Autowired 
	Foodrepo repofood;

	@GetMapping("admindashboard")
	public String adminDashboard(Model model) {
		List<Integer> userspermonth= new ArrayList<>();
		model.addAttribute("goalsApproved" , repogoal.GoalsCount());
		model.addAttribute("foodItems" , repofood.FoodCount());
		model.addAttribute("totalUsers" , repositoryUser.count());
		model.addAttribute("totalnutritionists" , repositoryUser.NutriCount());
		for(int i=1;i<=12;i++) {
			userspermonth.add(repositoryUser.Months(i));
		}
		System.out.println(userspermonth.get(3));
		model.addAttribute("month",userspermonth);
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
	
	@GetMapping("listuser")
	
	public String listUser(Model model) {
		List<UserEntity> userList = repositoryUser.findAll();
	   model.addAttribute("listUser",userList);
	   
	   
		
		
		return "ListUser";
	}
	
@GetMapping("usersreport")
	
	public String Reportuser(Model model) {
		List<UserEntity> usersreport = repositoryUser.findAll();
	   model.addAttribute("Usersreport", usersreport);
	   
	   
		
		
		return "Reports/ReportUser";
	}
		
	
	
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

