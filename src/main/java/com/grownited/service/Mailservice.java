package com.grownited.service;

import org.hibernate.service.JavaServiceLoadable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
@Service
public class Mailservice {
   
	@Autowired
	JavaMailSender mailSender;
	
	public void sendWelcomeMail(String email,String firstname) {
		String subject="Welcome to the my team";
	    String body="Hey" + firstname + ", We're excited to have you on board.I Hope you will have great experiance in our startup!";
	     
	    String from="sp8577813@gmail.com";
	    
	    //logic
	    SimpleMailMessage message = new SimpleMailMessage(); // object calling
	    
	    message.setFrom(from);
	    message.setTo(email);
	    message.setSubject(subject);
	    message.setText(body);
	    
	    mailSender.send(message);
	    
	
	}
}
