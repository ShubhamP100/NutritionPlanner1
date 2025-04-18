package com.grownited.entity;


import jakarta.persistence.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



// Simple the user entity is to design the database of different roles ex: users,admins,or other stuff

@Entity // to create the table
@Table(name="foods") // assign
public class FoodEntity {

	@Id 
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer foodid;
	private String foodname;
	private Float calories;
	private Float fats;
	private Float protein;
	//private String servingsize;
	private String foodcategory;
    private String dietype;
    
	public Integer getFoodid() {
		return foodid;
	}
	public void setFoodid(Integer foodid) {
		this.foodid = foodid;
	}
	public String getFoodname() {
		return foodname;
	}
	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}
	
	public Float getCalories() {
		return calories;
	}
	public void setCalories(Float calories) {
		this.calories = calories;
	}
	public Float getFats() {
		return fats;
	}
	public void setFats(Float fats) {
		this.fats = fats;
	}
	public Float getProtein() {
		return protein;
	}
	public void setProtein(Float protein) {
		this.protein = protein;
	}
	public String getFoodcategory() {
		return foodcategory;
	}
	public void setFoodcategory(String foodcategory) {
		this.foodcategory = foodcategory;
	}
	public String getDietype() {
		return dietype;
	}
	public void setDietype(String dietype) {
		this.dietype = dietype;
	}
    
	
	
	
	
}
