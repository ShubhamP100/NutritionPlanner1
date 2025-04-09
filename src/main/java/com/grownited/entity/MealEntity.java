/*
 * 
 * Meal Entity 
 * */


package com.grownited.entity;


import java.util.Date;
import java.time.LocalDateTime;

import jakarta.persistence.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


// Simple the user entity is to design the database of different roles ex: users,admins,or other stuff

@Entity // to create the table
@Table(name="meals") // assign the name of table which will store in the mysql database





public class MealEntity {
 
	  @Id 
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  
	  private Integer mealPlanId;
	  private Integer userId; //fk
	  private String mealType;
	  private Float totalCalories;
	  private Float totalProtein;
	  private Float totalFats;
	  private Float totalCarbohydrates;
	  private LocalDateTime  createdAt;
	  private LocalDateTime updatedAt;
	public Integer getMealPlanId() {
		return mealPlanId;
	}
	public void setMealPlanId(Integer mealPlanId) {
		this.mealPlanId = mealPlanId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getMealType() {
		return mealType;
	}
	public void setMealType(String mealType) {
		this.mealType = mealType;
	}
	public Float getTotalCalories() {
		return totalCalories;
	}
	public void setTotalCalories(Float totalCalories) {
		this.totalCalories = totalCalories;
	}
	public Float getTotalProtein() {
		return totalProtein;
	}
	public void setTotalProtein(Float totalProtein) {
		this.totalProtein = totalProtein;
	}
	public Float getTotalFats() {
		return totalFats;
	}
	public void setTotalFats(Float totalFats) {
		this.totalFats = totalFats;
	}
	public Float getTotalCarbohydrates() {
		return totalCarbohydrates;
	}
	public void setTotalCarbohydrates(Float totalCarbohydrates) {
		this.totalCarbohydrates = totalCarbohydrates;
	}
	public LocalDateTime getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}
	public LocalDateTime getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(LocalDateTime updatedAt) {
		this.updatedAt = updatedAt;
	}
	  
	
	
}
