package com.grownited.controller.Nutrionist;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.DTO.FilterDto;
import com.grownited.DTO.Goaldto;
//import org.springframework.security.crypto.password.PasswordEncoder;
import com.grownited.entity.BreakfastEntity;
import com.grownited.entity.DinnerEntity;
import com.grownited.entity.FoodEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.LunchEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.Breakfastrepo;
import com.grownited.repository.Dinnerrepo;
import com.grownited.repository.Foodrepo;
import com.grownited.repository.GoalRepo;
import com.grownited.repository.Lunchrepo;
import com.grownited.repository.UserRepo;
import com.grownited.service.Mailservice;

import jakarta.servlet.http.HttpSession;
@Controller
public class NutriController {

	@Autowired
	Mailservice mailService;
	@Autowired
	GoalRepo repogoal;
	
	@Autowired
	Foodrepo foodRepo;
	
	@Autowired
	Breakfastrepo breakfastrepo;
	
	@Autowired
	Dinnerrepo repodinner;
	
	@Autowired
	Lunchrepo repolunch;
	
	@Autowired
	UserRepo userRepo;
	
	@GetMapping("nutrihome")
	public String nutriHome(HttpSession session, Model model) {
		UserEntity userNutri = (UserEntity) session.getAttribute("user");
		model.addAttribute("nutriInfo" , userNutri);
		return "Nutrionist/NutriHome";
	}
	@GetMapping("listgoal")
	public String listgoal(HttpSession session ,Model model) {
	    
		Integer userid =  ((UserEntity) session.getAttribute("user")).getUserId();
		System.out.println(userid);
		List<Goaldto> goaldto=repogoal.goals(userid);
		
		System.out.println(goaldto.size());
		//model.addAttribute("status","")
		model.addAttribute("goals",goaldto);
		return "Nutrionist/nutrigoal";
	}
	@GetMapping("viewparticulargoal")
	
	public String viewgoal(Integer goalid ,Model model) {
	   Optional<GoalEntity> goalss  = repogoal.findById(goalid)	;
	   model.addAttribute("table",goalss.get());
		return "Nutrionist/goalscard"; 
	}
	
	@GetMapping("breakfast")
	
	public String breakfast() {
		
		return "Nutrionist/Brekfast";
	}
	@GetMapping("items")
	
	public String items(@RequestParam(required = false) String message ,
			              @RequestParam(required = false) String msg,
			             @RequestParam(required = false) String ok, 
			           Integer userId,Model model) {
		if (message == null) {
			model.addAttribute("added" , "no");
		}
		
		else {
			model.addAttribute("added" , "yes");
		}
		if(msg==null) {
			model.addAttribute("done","no");
		}
		else {
			model.addAttribute("done", "yes");
					     
		}
		
		if(ok==null) {
			model.addAttribute("finish","no");
		}
		else {
			model.addAttribute("finish", "yes");
					
		}
		
		model.addAttribute("userid",userId);
		
		return "Nutrionist/Bld";
	}
	
	@GetMapping("addmeal")
	
	public String cards(@RequestParam (required=false) String mealtype, Model model,Integer userId,
			            @RequestParam (required = false) String foodcategory,
			            @RequestParam (required = false) String dietype) {
		
	     //Constant things to send no matter filter is applied or not
		 List<String> categories = foodRepo.getFoodCategory();
		 List<String> diets = foodRepo.getFoodDietType();
		 model.addAttribute("categories" , categories);
		 model.addAttribute("diets" , diets);
		 model.addAttribute("id", userId);
		 model.addAttribute("foruser","no");
		 //
		 
		 //Now if both things exist in querry params
		 if (foodcategory != null && dietype != null) {
			 List<FoodEntity> filteredContentByCategoryAndType = foodRepo.getFilteredFoodByCategoryAndDiet(foodcategory , dietype);
			 model.addAttribute("foods" , filteredContentByCategoryAndType);
		 }
		 
		 else if(foodcategory != null) {
			 List<FoodEntity> filteredContentByType = foodRepo.getFilteredFoodByDietType(dietype);
			 model.addAttribute("foods" , filteredContentByType);
		 }
		 
		 else if (dietype != null) {
			 List<FoodEntity> filteredContentByCategory = foodRepo.getFilteredFoodByCategory(foodcategory);
			 model.addAttribute("foods" , filteredContentByCategory);
		 }
		 
		 else {
			 System.out.println("i am inside else");
			 List<FoodEntity> foods = foodRepo.findAll();
			 model.addAttribute("foods", foods);
		 }
		 
		 
		if(mealtype==null) {
			
			System.out.println("inside breakfast");
			return "Nutrionist/Brekfast";
		}else if(mealtype.equalsIgnoreCase("lunch")) {
		  	return "Nutrionist/Lunch";
		}
		
		return "Nutrionist/Dinner";
	}
	
	@PostMapping("savebreakfast")
	public String saveBreakfast(Integer userId , @RequestParam("foodid") List<Integer> foodid , HttpSession httpSession) {
		Integer nutriid = ((UserEntity) httpSession.getAttribute("user")).getUserId();
		List<BreakfastEntity> list = new ArrayList<>();
		String message = "added";
		
		for (Integer id : foodid) {
			BreakfastEntity bfEntity = new BreakfastEntity();
			bfEntity.setUserid(userId);
			bfEntity.setFoodid(id);
			bfEntity.setNutriid(nutriid);
			bfEntity.setCreatedAt(LocalDate.now());
			list.add(bfEntity);
		
		}
		breakfastrepo.saveAll(list);
		return "redirect:/items?message=" + message + "&userId="+userId;
	}
	
	
	
	@PostMapping("savelunch")
	public String saveLunch(Integer userId , @RequestParam("foodid") List<Integer> foodid , HttpSession httpSession) {
		Integer nutriid = ((UserEntity) httpSession.getAttribute("user")).getUserId();
		List<LunchEntity> list = new ArrayList<>();
		String ok = "finish";
		
		for (Integer id : foodid) {
			LunchEntity lfEntity = new LunchEntity();
			lfEntity.setUserid(userId);
			lfEntity.setFooodid(id);
		    lfEntity.setNutriid(nutriid);
			lfEntity.setCreatedAt(LocalDate.now());
			list.add(lfEntity);
		
		}
		repolunch.saveAll(list);
		return "redirect:/items?ok=" + ok + "&userId="+userId;
	}
	
	
	@PostMapping("savedinner")
	public String saveDinner(Integer userId , @RequestParam("foodid") List<Integer> foodid , HttpSession httpSession) {
		Integer nutriid = ((UserEntity) httpSession.getAttribute("user")).getUserId();
		List<DinnerEntity> list = new ArrayList<>();
		String msg = "added";
		
		for (Integer id : foodid) {
			DinnerEntity dfEntity = new DinnerEntity();
			dfEntity.setUserid(userId);
			dfEntity.setFoodid(id);
			dfEntity.setNutriid(nutriid);
			dfEntity.setCreatedAt(LocalDate.now());
			list.add(dfEntity);
		
		}
		repodinner.saveAll(list);
		return "redirect:/items?msg=" + msg + "&userId="+userId;
	}
	// Save meal to send the mail to user 
	@GetMapping("savemeal")
	
	public String savemmeal(Integer userId) {
		
		Optional<GoalEntity> opGoal = repogoal.findByUserId(userId);
		opGoal.get().setStatus("approved");
		repogoal.save(opGoal.get());
		Optional<UserEntity> op = userRepo.findById(userId);
		String email = op.get().getEmail();
		String name = op.get().getFirstName() + op.get().getLastname();
		mailService.sendMealReminder(email, name);
		return "redirect:/listgoal";
	}
	
	
	
	
//	
	

	
	
}
