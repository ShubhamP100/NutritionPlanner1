package com.grownited.entity;


import java.time.LocalDate;
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
	private String goalType;
	//private String goalType
	private Float targetWeight;
	private String status;
	private Float targetMuscleMass;
	private LocalDate targetDate;
	private Float calorieIntakeGoal;
	private Float proteinIntakeGoal;
	private Float fatIntakeGoal;
	private Float carbIntakeGoal;
	private LocalDate createdAt;
	private LocalDate updatedAt;

	
	
	
	
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
		return goalType;
	}
	public void setGoalType(String goalType) {
		this.goalType = goalType;
	}
	public Float getTargetWeight() {
		return targetWeight;
	}
	public void setTargetWeight(Float targetWeight) {
		this.targetWeight = targetWeight;
	}
	public Float getTargetMuscleMass() {
		return targetMuscleMass;
	}
	public void setTargetMuscleMass(Float targetMuscleMass) {
		this.targetMuscleMass = targetMuscleMass;
	}
	public LocalDate getTargetDate() {
		return targetDate;
	}
	public void setTargetDate(LocalDate targetDate) {
		this.targetDate = targetDate;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Float getCalorieIntakeGoal() {
		return calorieIntakeGoal;
	}
	public void setCalorieIntakeGoal(Float calorieIntakeGoal) {
		this.calorieIntakeGoal = calorieIntakeGoal;
	}
	public Float getProteinIntakeGoal() {
		return proteinIntakeGoal;
	}
	public void setProteinIntakeGoal(Float proteinIntakeGoal) {
		this.proteinIntakeGoal = proteinIntakeGoal;
	}
	public Float getFatIntakeGoal() {
		return fatIntakeGoal;
	}
	public void setFatIntakeGoal(Float fatIntakeGoal) {
		this.fatIntakeGoal = fatIntakeGoal;
	}
	public Float getCarbIntakeGoal() {
		return carbIntakeGoal;
	}
	public void setCarbIntakeGoal(Float carbIntakeGoal) {
		this.carbIntakeGoal = carbIntakeGoal;
	}
	public LocalDate getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDate createdAt) {
		this.createdAt = createdAt;
	}
	public LocalDate getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(LocalDate updatedAt) {
		this.updatedAt = updatedAt;
	}
	
		
	 
	
	
	

	
	
}
