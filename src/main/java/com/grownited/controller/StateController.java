package com.grownited.controller;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.*;

@Controller




public class StateController {
   
	   @GetMapping("newstate") // url pe jo dikega vo 
	   public String newsstate() { 
		   return "NewState"; // returns the jsp file 
	   } 
	   @PostMapping("savestate") 
		   public String statesave(StateEntity state) {
		   System.out.println(state.getState());
		   return "NewState";
	   }
}
