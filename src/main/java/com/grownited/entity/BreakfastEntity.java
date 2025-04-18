package com.grownited.entity;



import java.time.LocalDate;


import jakarta.persistence.*;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



@Entity // to create the table
@Table(name="breakfast") // assign the name of table which will store in the mysql database

public class BreakfastEntity {

	@Id 
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer breakfastid; // pk;
	private Integer foodid;// fk
	private Integer userid;// fk
	private Integer nutriid;// fk
	private LocalDate createdAt;
	public Integer getBreakfastid() {
		return breakfastid;
	}
	public void setBreakfastid(Integer breakfastid) {
		this.breakfastid = breakfastid;
	}
	public Integer getFoodid() {
		return foodid;
	}
	public void setFoodid(Integer foodid) {
		this.foodid = foodid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getNutriid() {
		return nutriid;
	}
	public void setNutriid(Integer nutriid) {
		this.nutriid = nutriid;
	}
	public LocalDate getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDate createdAt) {
		this.createdAt = createdAt;
	}
	
	
	
	
}
