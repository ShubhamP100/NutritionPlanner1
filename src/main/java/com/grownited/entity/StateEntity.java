package com.grownited.entity;
import jakarta.persistence.*;

@Entity
@Table(name="statetable") 
public class StateEntity {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer stateid;
	private String state;

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Integer getStateid() {
		return stateid;
	}

	public void setStateid(Integer stateid) {
		this.stateid = stateid;
	}
	
	
	
	
	
	
	
	
}
