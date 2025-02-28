package com.grownited.entity;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.sql.Date;
@Entity
@Table(name="registeruser")

public class RegesterEntity  {
	
	
	    
		 @Id
		 @GeneratedValue(strategy = GenerationType.IDENTITY) // to generate the integer id 
		 
		 private Integer userdetailid;
		 private Integer userId;//fk
		 private Integer age;
		 private Float height;
		 private Float weight;
		 private String healthGoal;
		 private String medicalcondition;
		
		 private String activityLevel;

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
			return age;
		}

		public void setAge(Integer age) {
			this.age = age;
		}

		public Float getHeight() {
			return height;
		}

		public void setHeight(Float height) {
			this.height = height;
		}

		public Float getWeight() {
			return weight;
		}

		public void setWeight(Float weight) {
			this.weight = weight;
		}

		public String getHealthGoal() {
			return healthGoal;
		}

		public void setHealthGoal(String healthGoal) {
			this.healthGoal = healthGoal;
		}

		public String getMedicalcondition() {
			return medicalcondition;
		}

		public void setMedicalcondition(String medicalcondition) {
			this.medicalcondition = medicalcondition;
		}

		public String getActivityLevel() {
			return activityLevel;
		}

		public void setActivityLevel(String activityLevel) {
			this.activityLevel = activityLevel;
		}
		
	}


