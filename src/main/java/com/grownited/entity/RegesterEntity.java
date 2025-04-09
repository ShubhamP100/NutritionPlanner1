package com.grownited.entity;

import jakarta.persistence.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.*;
@Entity
@Table(name="registeruser")

public class RegesterEntity  {
	
	
	    
		 @Id
		 @GeneratedValue(strategy = GenerationType.IDENTITY) // to generate the integer id 
		 
		 private Integer userdetailid;
		 private Integer userId;//fk
		 private Integer Age;
		 private Float Height;
		 private Float Weight;
		 private String HealthGoal;// bulking lean etc
		 private String Medicalcondition; // diabetes / lean / etc  
		 private String ActivityLevel;
         private LocalDate Createdat;
		public Integer getUserdetailid() {
			return userdetailid;
		}

		public void setUserdetailid(Integer userdetailid) {
			this.userdetailid = userdetailid;
		}

		public Integer getUserId() {
			return userId;
		}

		public void setUserId(Integer userId) {
			this.userId = userId;
		}

		public Integer getAge() {
			return Age;
		}

		public void setAge(Integer age) {
			Age = age;
		}

		public Float getHeight() {
			return Height;
		}

		public void setHeight(Float height) {
			Height = height;
		}

		public Float getWeight() {
			return Weight;
		}

		public void setWeight(Float weight) {
			Weight = weight;
		}

		public String getHealthGoal() {
			return HealthGoal;
		}

		public void setHealthGoal(String healthGoal) {
			HealthGoal = healthGoal;
		}

		public String getMedicalcondition() {
			return Medicalcondition;
		}

		public void setMedicalcondition(String medicalcondition) {
			Medicalcondition = medicalcondition;
		}

		public String getActivityLevel() {
			return ActivityLevel;
		}

		public void setActivityLevel(String activityLevel) {
			ActivityLevel = activityLevel;
		}

		public LocalDate getCreatedat() {
			return Createdat;
		}

		public void setCreatedat(LocalDate createdat) {
			Createdat = createdat;
		}
		

		
	}


