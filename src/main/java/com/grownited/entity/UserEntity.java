package com.grownited.entity;


//import java.util.Date;

import java.time.LocalDate;

import jakarta.persistence.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


// Simple the user entity is to design the database of different roles ex: users,admins,or other stuff

@Entity // to create the table
@Table(name="users",uniqueConstraints = @UniqueConstraint(columnNames = "email")) // assign the name of table which will store in the mysql database


public class UserEntity {
        
	  @Id 
	  @GeneratedValue(strategy = GenerationType.IDENTITY) // to generate the integer id 
	  private Integer userId;
	  private String firstName;
	  private String lastname;
	  @Column(unique = true,nullable=false)
	  private String email;
	  private String password;
	  private String contactno;
	  private String gender;
	  private String city;
	 // private String role; // user admin 
	  private LocalDate createdAt;// X -> today's date
	  private Boolean active; // X -> true
	  private String otp;
	  private String education;
	  private String experiance;
	  private String aboutus;
	  private String profilepic;

	  @Column(nullable = false)
	   
	  private String role ; // Default role

	
	   public LocalDate getCreatedAt() {
			return createdAt;
		}
		public void setCreatedAt(LocalDate createdAt) {
			this.createdAt = createdAt;
		}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	public Integer getUserId() {
		return userId;
	    }
	   public void setUserId(Integer userId) {
		this.userId = userId;
	   }
	   
	 
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
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
	  public String getPassword() {
		return password;
	  }
	  public void setPassword(String password) {
		this.password = password;
	  }
    	public String getContactno() {
		return contactno;
	  }
	  public void setContactno(String contactno) {
		this.contactno = contactno;
	  }
	  public String getGender() {
		return gender;
	  }
	  public void setGender(String gender) {
		this.gender = gender;
	  }
	  public String getCity() {
		return city;
	  }
	  public void setCity(String city) {
		this.city = city;
	  }
	  
	  public String getRole() {
		return role;
	  }
	  public void setRole(String role) {
		this.role = role;
	  }
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getExperiance() {
		return experiance;
	}
	public void setExperiance(String experiance) {
		this.experiance = experiance;
	}
	public String getAboutus() {
		return aboutus;
	}
	public void setAboutus(String aboutus) {
		this.aboutus = aboutus;
	}
	public String getProfilepic() {
		return profilepic;
	}
	public void setProfilepic(String profilepic) {
		this.profilepic = profilepic;
	}
	  
	  
	  
	  
      
	  
}
