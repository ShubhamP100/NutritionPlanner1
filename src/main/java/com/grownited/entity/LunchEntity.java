package com.grownited.entity;


import java.time.LocalDate;


import jakarta.persistence.*;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



@Entity // to create the table
@Table(name="lunch") // as


public class LunchEntity {
	
	 @Id 
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	private  Integer lunchid;
	private Integer userid;//fk
	private Integer nutriid;
	private LocalDate createdAt;
	private Integer fooodid;
	public Integer getLunchid() {
		return lunchid;
	}
	public void setLunchid(Integer lunchid) {
		this.lunchid = lunchid;
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
	public Integer getFooodid() {
		return fooodid;
	}
	public void setFooodid(Integer fooodid) {
		this.fooodid = fooodid;
	}
	public LocalDate getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDate createdAt) {
		this.createdAt = createdAt;
	}
	
	

}
