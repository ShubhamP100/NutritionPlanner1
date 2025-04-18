package com.grownited.DTO;

public class registerdto {
   private String first_name;
   private String lastname;
   private String email;
   private String city;
   private String contactno;
   private Integer age;
   private String health_goal;
   private Float height;
   private String medicalcondition;
   private Float weight;
   private String activity_level;
   
public registerdto(String first_name, String lastname, String email, String city , String contactno, Integer age, String health_goal,
		Float height, String medicalcondition,  Float weight, String activity_level) {
	super();
	this.first_name = first_name;
	this.lastname = lastname;
	this.email = email;
	this.city=city;
	this.contactno = contactno;
	this.age = age;
	this.health_goal = health_goal;
	this.height = height;
	this.medicalcondition = medicalcondition;
	this.weight = weight;
	this.activity_level = activity_level;
}

public String getFirst_name() {
	return first_name;
}

public void setFirst_name(String first_name) {
	this.first_name = first_name;
}

public String getLastname() {
	return lastname;
}

public void setLastname(String lastname) {
	this.lastname = lastname;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getContactno() {
	return contactno;
}

public void setContactno(String contactno) {
	this.contactno = contactno;
}

public Integer getAge() {
	return age;
}

public void setAge(Integer age) {
	this.age = age;
}

public String getHealth_goal() {
	return health_goal;
}

public void setHealth_goal(String health_goal) {
	this.health_goal = health_goal;
}

public Float getHeight() {
	return height;
}

public void setHeight(Float height) {
	this.height = height;
}

public String getMedicalcondition() {
	return medicalcondition;
}

public void setMedicalcondition(String medicalcondition) {
	this.medicalcondition = medicalcondition;
}

public Float getWeight() {
	return weight;
}

public void setWeight(Float weight) {
	this.weight = weight;
}

public String getActivity_level() {
	return activity_level;
}

public void setActivity_level(String activity_level) {
	this.activity_level = activity_level;
}
	 
   
  
}

