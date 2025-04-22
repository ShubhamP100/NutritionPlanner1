package com.grownited.controller.User;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.GoalEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.GoalRepo;

import jakarta.servlet.http.HttpSession;

@Controller
public class GoalContoller {

	
	@Autowired 
	GoalRepo repogoal;
	
	@GetMapping("add-goal")
	
	public String addgoal() {
		
		return "/User/Addgoal";
	}
	
	@PostMapping("save-goal")
	public String savegoal(HttpSession session ,Model model,GoalEntity entitygoal  ) {
		Integer userId = (Integer) ((UserEntity) session.getAttribute("user")).getUserId();
		entitygoal.setUserId(userId);
        entitygoal.setCreatedAt(LocalDate.now());
        entitygoal.setStatus("pending");
		repogoal.save(entitygoal);
		return "User/Listgoal";
	}
	
	@GetMapping("showowngoal")
	public String Listgoal(HttpSession session,Model model) {
		Integer userId = (Integer) ((UserEntity) session.getAttribute("user")).getUserId();
		List<GoalEntity> mygoal= repogoal.goalentity(userId); 
		model.addAttribute("mygoal",mygoal);
		return "User/Listgoal";
	}
	
	@GetMapping("editgoal")
		
	public String editgoal(Integer goalId ,Model model ) {
		Optional<GoalEntity> op  = repogoal.findById(goalId);
		//repogoal.findById(goalId);
		System.out.println(op.get().getGoalType());
		model.addAttribute("goals",op.get());
		
     return "User/Editgoal";
	}
     @GetMapping("deletegoal")
      
     public String deletegoal(Integer goalId) { 
    	 
    	 repogoal.deleteById(goalId);
    	 return "redirect:/listgoal";
     }
     
     
     
	
	@PostMapping("update-goal")
	
	public String updategoal(GoalEntity goalentity) {
	    Optional<GoalEntity> op = repogoal.findById(goalentity.getGoalId());
	    
	    GoalEntity goal = op.get();
	    //targetDate;
	    
	    goal.setGoalType(goalentity.getGoalType());
	    //goal.setGoaltype(goalentity.getGoaltype());
	    goal.setCalorieIntakeGoal(goalentity.getCalorieIntakeGoal());
	   // goal.setProteinIntakeGoal(goalentity.getProteinIntakeGoal());
	    goal.setCarbIntakeGoal(goalentity.getCarbIntakeGoal());
	    goal.setFatIntakeGoal(goalentity.getFatIntakeGoal());
	   // goal.setTargetMuscleMass(goalentity.getProteinIntakeGoal());
	    goal.setTargetWeight(goalentity.getTargetWeight());
	   
	    goal.setProteinIntakeGoal(goalentity.getProteinIntakeGoal());
	    goal.setCreatedAt(goalentity.getCreatedAt());
	    goal.setTargetDate(goalentity.getTargetDate());
        goal.setUpdatedAt(goalentity.getUpdatedAt());	    
	    
        repogoal.save(goal);
	    
	   return "redirect:/listgoal";
			
	}
	
		
	
	
	
	
}
