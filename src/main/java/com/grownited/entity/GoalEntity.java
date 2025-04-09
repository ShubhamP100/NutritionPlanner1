package com.grownited.entity;


import java.util.Date;

import jakarta.persistence.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


// Simple the user entity is to design the database of different roles ex: users,admins,or other stuff

@Entity // to create the table
@Table(name="goals") // assign the name of table which will store in the mysql database

public class GoalEntity {
	
	  @Id 
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer goalId;
	private Integer userId;// fk se hoga
	private String GoalType;
    private Float TargetWeight;
	private Float TargetMuscleMass;
	private Float HeightGoal;
	private Date TargetDate;
	private Float CalorieIntakeGoal;
	private Float ProteinIntakeGoal;
	private Float FatIntakeGoal;
	private Float CarbIntakeGoal;
	private Date createdAt;
	private Date updatedAt;
	
	
	
	
	public Integer getGoalId() {
		return goalId;
	}
	public void setGoalId(Integer goalId) {
		this.goalId = goalId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getGoalType() {
		return GoalType;
	}
	public void setGoalType(String goalType) {
		GoalType = goalType;
	}
	public Float getTargetWeight() {
		return TargetWeight;
	}
	public void setTargetWeight(Float targetWeight) {
		TargetWeight = targetWeight;
	}
	public Float getTargetMuscleMass() {
		return TargetMuscleMass;
	}
	public void setTargetMuscleMass(Float targetMuscleMass) {
		TargetMuscleMass = targetMuscleMass;
	}
	public Float getHeightGoal() {
		return HeightGoal;
	}
	public void setHeightGoal(Float heightGoal) {
		HeightGoal = heightGoal;
	}
	public Date getTargetDate() {
		return TargetDate;
	}
	public void setTargetDate(Date targetDate) {
		TargetDate = targetDate;
	}
	public Float getCalorieIntakeGoal() {
		return CalorieIntakeGoal;
	}
	public void setCalorieIntakeGoal(Float calorieIntakeGoal) {
		CalorieIntakeGoal = calorieIntakeGoal;
	}
	public Float getProteinIntakeGoal() {
		return ProteinIntakeGoal;
	}
	public void setProteinIntakeGoal(Float proteinIntakeGoal) {
		ProteinIntakeGoal = proteinIntakeGoal;
	}
	public Float getFatIntakeGoal() {
		return FatIntakeGoal;
	}
	public void setFatIntakeGoal(Float fatIntakeGoal) {
		FatIntakeGoal = fatIntakeGoal;
	}
	public Float getCarbIntakeGoal() {
		return CarbIntakeGoal;
	}
	public void setCarbIntakeGoal(Float carbIntakeGoal) {
		CarbIntakeGoal = carbIntakeGoal;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	 
	
	
	

	
	
}
