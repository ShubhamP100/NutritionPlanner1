package com.grownited.DTO;

public class FilterDto {

	private String foodCategory;
	private String foodDietType;
	
	public FilterDto(String foodCategory , String foodDietType) {
		this.foodCategory = foodCategory;
		this.foodDietType = foodDietType;				
	
	}

	public String getFoodCategory() {
		return foodCategory;
	}

	public void setFoodCategory(String foodCategory) {
		this.foodCategory = foodCategory;
	}

	public String getFoodDietType() {
		return foodDietType;
	}

	public void setFoodDietType(String foodDietType) {
		this.foodDietType = foodDietType;
	}
	
	
}
