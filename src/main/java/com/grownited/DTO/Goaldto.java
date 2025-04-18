package com.grownited.DTO;
import java.time.LocalDate;
import java.sql.Date;
public class Goaldto {
     private String firstname;
     private String lastname;
     private String email;
     private LocalDate created_at;
    
     private String goal_type;
     private Integer goal_id;
     private String status;
	public Goaldto(String firstname, String lastname,String email, Date created_at, String goal_type, Integer goal_id , String status) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email=email;
		this.created_at = created_at.toLocalDate();
		this.goal_type = goal_type;
		this.goal_id = goal_id;
		this.setStatus(status);
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
      this.lastname =lastname;
      
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public LocalDate getCreated_at() {
		return created_at;
	}
	public void setCreated_at(LocalDate created_at) {
		this.created_at = created_at;
	}
	public String getGoal_type() {
		return goal_type;
	}
	public void setGoal_type(String goal_type) {
		this.goal_type = goal_type;
	}
	public Integer getGoal_id() {
		return goal_id;
	}
	public void setGoal_id(Integer goal_id) {
		this.goal_id = goal_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
     
     
     
     
     
	
}
