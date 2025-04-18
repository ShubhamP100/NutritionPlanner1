package com.grownited.service;

import org.apache.logging.log4j.message.SimpleMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class Mailservice {
   
	@Autowired
	JavaMailSender mailSender;
	
	public void sendWelcomeMail(String email,String firstName) {
		String subject="Welcome to the my team";
	    String body="Hey" + firstName + ", We're excited to have you on board.I Hope you will have great experiance in our startup!";
	     
	    String from="shubhamcarrers500@gmail.com";
	    
	    //logic
	    SimpleMailMessage message = new SimpleMailMessage(); // object calling
	    
	    message.setFrom(from);
	    message.setTo(email);
	    message.setSubject(subject);
	    message.setText(body);    
	    mailSender.send(message);
	}  
	    public void otpPassword(String email,String firstName,String otp) {
	    	
	    	String subject="Otp request to reset the password" ;
	    	String body="Hey" + firstName + ",You requested for the otp ,here is your otp please check it " +otp;
	    	
	        String from="shubhamcarrers500@gmail.com";
	        SimpleMailMessage message = new SimpleMailMessage();

			message.setFrom(from);
			message.setTo(email);
			message.setSubject(subject);
			message.setText(body);

			mailSender.send(message);
	    }
	    
	    public void sendMealReminder(String email , String name) {
	    	String body = "Congratulations!! " + name + " Your goal was reviewed by nutritionist and an effectivee meal for the same has been sent to you, Please check it out";
	    	String subject = "Meal Status mail";
	    	String from = "shubhamcarrers@gmail.com";
	    	SimpleMailMessage msg = new SimpleMailMessage();
	    	
	    	msg.setSubject(subject);
	    	msg.setTo(email);
	    	msg.setFrom(from);
	    	msg.setText(body);
	    	
	    	mailSender.send(msg);
	    }
	    
	
	
}
