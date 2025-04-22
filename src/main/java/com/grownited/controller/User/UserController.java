
package com.grownited.controller.User;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.DTO.registerdto;
import com.grownited.entity.FoodEntity;
import com.grownited.entity.GoalEntity;
import  com.grownited.entity.RequestEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.Breakfastrepo;
import com.grownited.repository.Dinnerrepo;
import com.grownited.repository.Foodrepo;
import com.grownited.repository.Lunchrepo;
import com.grownited.repository.RegisterUser;
import com.grownited.repository.Requestrepo;
import com.grownited.repository.UserRepo;

import jakarta.servlet.http.HttpSession;
@Controller
public class UserController {

	
	@Autowired
	UserRepo repositoryUser;
	
	@Autowired 
	RegisterUser registerrepo;
	
	@Autowired
	Requestrepo reporequest;
	@Autowired
	Foodrepo repofood;
	
	@Autowired
	Breakfastrepo repobreakfast;
	
	@Autowired
	Lunchrepo lunchRepo;
	
	@Autowired
	Dinnerrepo dinnerRepo;
	
	@Autowired
	Cloudinary cloud;
	
	
	@GetMapping("homee")
	public String userHome(HttpSession session, Model model) {
	    UserEntity user = (UserEntity) session.getAttribute("user");
	    if (user == null) return "redirect:/login";

	    model.addAttribute("user", user);
	    return "User/Home"; // JSP name (userhome.jsp)
	}
	
	@GetMapping("adminprofile")
    public String adminprofile(HttpSession session) {
	//session.invalidate();
	
	return "Profile";
	}
	
	//Checking out personal profile
		@GetMapping("gotopersonalprofile") // gotopersonalprofile
		public String personalProfile( HttpSession httpSession , Model model) {
			Integer userId = (Integer) ((UserEntity) httpSession.getAttribute("user")).getUserId();
			Optional<UserEntity> op = repositoryUser.findById(userId);
//			model.addAttribute("user" , op.get());
			System.out.println(op.get().getRole());
			if (op.get().getRole().equalsIgnoreCase("User")) {
				registerdto registerdetails = registerrepo.registerdetails(userId);
				model.addAttribute("register", registerdetails);
				return "User/Myprofile";
			}
			else  
			{
			return "Nutrionist/Profile";// isko abhi bana nahe wait
			}
		}
		
		//Takes user to edit profile jsp
		@GetMapping("edituserprofile")
		public String editMyProfile(HttpSession httpSession , Model model) {
			String role = (String) ((UserEntity) httpSession.getAttribute("user")).getRole();
			System.out.println(role);
			if (role.equalsIgnoreCase("User")) {
				System.out.println("i am user"
						+ "");
				return "User/Editprofile";
			}else if(role.equalsIgnoreCase("Nutrionist")){
				model.addAttribute("role" , role);
			    System.out.println(role);
				return "User/Editprofile";//admin profile
				
			}
			else {
				return "Profile";
			}
				
			
			//return "journalist/EditJournalistProfile";
		}
		
		//When the form on edit user is submitted, this url is hit
		@PostMapping("updateuserprofile")
		public String updateUserProfile(UserEntity userEntity, MultipartFile image) { //MultipartFile profilePic
			System.out.println(userEntity.getUserId());
			Optional<UserEntity> op = repositoryUser.findById(userEntity.getUserId());
			if (op.isEmpty()) {
				return "redirect:/edituserprofile";
			}
			
			UserEntity entityUser = op.get();
			
			try {
				Map uploadPhoto = cloud.uploader().upload(image.getBytes() , ObjectUtils.emptyMap());
				String profilePath = uploadPhoto.get("url").toString();
				entityUser.setProfilepic(profilePath);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			entityUser.setFirstName(userEntity.getFirstName());
			entityUser.setLastname(userEntity.getLastname());
			entityUser.setEmail(userEntity.getEmail());
			entityUser.setContactno(userEntity.getContactno());
			
			entityUser.setCity(userEntity.getCity());
			
			
			
			
			
			if (entityUser.getRole().equalsIgnoreCase("User")) {
				repositoryUser.save(entityUser);
				return "redirect:/gotopersonalprofile";
				
			}
			
			else if (entityUser.getRole().equalsIgnoreCase("Nutrionist")){
				
		         entityUser.setAboutus(userEntity.getAboutus());
		         entityUser.setEducation(userEntity.getEducation());
		         entityUser.setExperiance(userEntity.getExperiance());
		         repositoryUser.save(entityUser);
		         return "redirect:/gotopersonalprofile";
				//return "redirect:/journalistpersonalprofile";
			}
			
			else {
				return "AdminDashboard";
			}
			
		}
		
		@GetMapping("shownutri")
		
		public String shownutri(Model model) {
			
		    List<UserEntity> nutri = repositoryUser.findByRole("Nutrionist"); 
		    model.addAttribute("nutrione" , nutri);
			return "User/Listnutrionist";
					
		}
		
		// View meal jsp
		@GetMapping("foodmeal") 
		public String viewmeal(HttpSession httpSession,
				               Model model ,  
				               @RequestParam (required = false) String mealtype) {
			Integer userId = (Integer) ((UserEntity) httpSession.getAttribute("user")).getUserId();
			GoalEntity goals = repositoryUser.goaltype(userId);
			model.addAttribute("individualgoal",goals);
			if (mealtype == null) {
				List<FoodEntity> breakfast = repobreakfast.breakfastmeal(userId);
				model.addAttribute("foods", breakfast);
			}
			
			else if (mealtype.equalsIgnoreCase("lunch")) {
				List<FoodEntity> lunch = lunchRepo.lunchmeal(userId);
				model.addAttribute("foods", lunch);
			}
			
			else {
				List<FoodEntity> dinner = dinnerRepo.dinnermeal(userId);
				model.addAttribute("foods" , dinner);
			}
			model.addAttribute("foruser","yes");
			
			
			return "User/ViewMeal";
		}
		
		
		@GetMapping("showgoal")
		
		public String showgoal(@RequestParam Integer nutriid , 
				               HttpSession httpSession
				              ) {
			Integer userId = (Integer) ((UserEntity) httpSession.getAttribute("user")).getUserId();
			RequestEntity requestentity = new RequestEntity();
			requestentity.setUseriid(userId);
			requestentity.setNutriid(nutriid);
			reporequest.save(requestentity);
			return "User/Listnutrionist";					
		}
		
		
		
		
	
}//usercontroller
