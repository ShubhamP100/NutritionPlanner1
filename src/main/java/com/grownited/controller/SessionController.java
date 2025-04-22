package com.grownited.controller;
import java.time.LocalDate;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepo;
import com.grownited.service.Mailservice;

import jakarta.servlet.http.HttpSession;

@Controller

public class SessionController { 
	
	@Autowired
	Mailservice serviceMail;
	
	
	@Autowired
	UserRepo repositoryuser;
	
	@Autowired
	PasswordEncoder encoder;
	
    @GetMapping (value ={"/","signup"})// for the routing   -> url 
	public String signup() {
		  return "Signup";  // returns the jsp file
	}
   
   
    @GetMapping("login")
    public String login(String email,String password) {
    	return "Login"; 
    }
    @GetMapping("logout")
    public String logout(HttpSession session) {
         session.invalidate();
    	return "redirect:/login";  
    }
    @PostMapping("saveuser")       
    	public String saveuser(UserEntity userEntity) { 
    	        /* System.out.println(user.getFirstname());
    	         System.out.println(user.getEmail());
    	         System.out.println(user.getGender());
    	         */
    	         
    	         String encPassword = encoder.encode(userEntity.getPassword());
 		         userEntity.setPassword(encPassword);
    	        
 		        //userEntity.setRole("user");/
 		         userEntity.setCreatedAt(LocalDate.now());
    	         
    	 		 repositoryuser.save(userEntity);//insert query 
    	 	     System.out.println(userEntity.getEmail() + "" + userEntity.getFirstName() );
    	 		 serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
    	 	     
                return "Login";		 
    	} 
    
    
    @PostMapping("/authenticate")
    public String authenticate(String email,String password,Model model, HttpSession session) {
    	 System.out.println(email);
    	 System.out.println(password);
    	 
    	 //users -> email,password
    	 Optional<UserEntity> op= repositoryuser.findByEmail(email);// -> It fetches the email from the UserEntity database to check the mail is present or not
    	 
       	 System.out.println(op);
       	
		// users -> email,password
		
		// select * from users where email = :email and password = :password
		if (op.isPresent()) {
			// true
			// email
			UserEntity dbUser = op.get();
            
			boolean ans = encoder.matches(password, dbUser.getPassword());
			System.out.println("Entered Password: " + password);
			System.out.println("Stored Password (Hashed): " + dbUser.getPassword());

          //  System.out.println(dbUser.getRole()); 
			if (ans == true) {
				System.out.println(dbUser.getRole());
				model.addAttribute("user",dbUser);
				session.setAttribute("user", dbUser); // session -> user set
				if (dbUser.getRole().equalsIgnoreCase("user")) {
                    
					// 
					return "redirect:/homee";
					
				} else if (dbUser.getRole().equalsIgnoreCase("ADMIN")) {
				   // System.out.println("role");
					
					return "redirect:/admindashboard";
					
				} else {
					System.out.println("Iam nutritionist");
					return "redirect:/nutrihome";
				}
				//return "redirect:/newuser";// h} 
					 

			}// end of the if 
		} 
		model.addAttribute("error", "Invalid Credentials");
		//return "Login";
    	 return "Login";
          	
    }
    @GetMapping("/forgetpassword")
    public String forgetpassword() {
    	
        return "ForgetPassword";
    }
    
    
    @PostMapping("sendOtp")
    public String sendOtp(String email,Model model) {
    	
    	// if the email valid
    	//The data will be fetched from the userEntity & the method findByEmail is used to 
    	// find the email id from the database
    	
    	Optional<UserEntity> op = repositoryuser.findByEmail(email);
    	
    	if(op.isEmpty()) {
    		model.addAttribute("error","Email not found");
    		return "ForgetPassword";
    	}else {
    		// email valid
    		//send mail otp
    		// otp generate
    		// send mail otp
    		String otp = "";
    		otp =(int) (Math.random()*1000000) + "";
    		UserEntity user= op.get();
    		user.setOtp(otp);
    		repositoryuser.save(user); // update the otp 
    		serviceMail.otpPassword(email,user.getFirstName(),otp);
    		
    		
    		
    	    // 
    	}
     	return "ChangePassword";
    }
    
    // update password
    @PostMapping("/updatepassword")
    public String updatePassword(String email,String otp,String password,Model model) {
    	Optional<UserEntity> op = repositoryuser.findByEmail(email);
		if (op.isEmpty()) {
			model.addAttribute("error", "Invalid Data");
			return "ChangePassword";
		} else {
			UserEntity user = op.get();
			if (user.getOtp().equalsIgnoreCase(otp)) { 
				String encPwd = encoder.encode(password);
				user.setPassword(encPwd);
				user.setOtp("");
				repositoryuser.save(user);// update
			} else {

				model.addAttribute("error", "Invalid Data");
				return "ChangePassword";
			}
		}
		model.addAttribute("msg", "Password updated");
		
    	
    	
    	return "Login";
    }
    
        
}
