package com.grownited.entity;
import jakarta.persistence.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


// Simple the user entity is to design the database of different roles ex: users,admins,or other stuff

@Entity // to create the table
@Table(name="goalrequest") // assign the name of table which will store in the mysql database
public class RequestEntity {
    
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) // to generate the integer id 
    private Integer requestid; 
	private Integer nutriid;
	private Integer useriid;
	public Integer getRequestid() {
		return requestid;
	}
	public void setRequestid(Integer requestid) {
		this.requestid = requestid;
	}
	public Integer getNutriid() {
		return nutriid;
	}
	public void setNutriid(Integer nutriid) {
		this.nutriid = nutriid;
	}
	public Integer getUseriid() {
		return useriid;
	}
	public void setUseriid(Integer useriid) {
		this.useriid = useriid;
	}
	
	
	
}
