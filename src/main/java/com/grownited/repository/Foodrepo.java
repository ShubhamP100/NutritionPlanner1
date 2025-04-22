package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.FoodEntity;

@Repository
public interface Foodrepo  extends JpaRepository<FoodEntity, Integer>{

	
	@Query(value = "SELECT DISTINCT foodcategory FROM foods" , nativeQuery = true)
	List<String> getFoodCategory();
	
	@Query(value = "SELECT DISTINCT dietype FROM foods" , nativeQuery = true)
	List<String> getFoodDietType();
	
	
	@Query(value = "SELECT f.* FROM foods f WHERE f.foodcategory = :foodCategory AND f.dietype = :dietType" , nativeQuery = true)
	List<FoodEntity> getFilteredFoodByCategoryAndDiet(@Param("foodCategory") String foodCategory , @Param("dietType") String dietType);
	
	@Query(value = "SELECT f.* FROM foods f WHERE f.foodcategory = :foodCategory" , nativeQuery = true)
	List<FoodEntity> getFilteredFoodByCategory(@Param("foodCategory") String foodCategory);
	
	@Query(value = "SELECT f.* FROM foods f WHERE f.dietype = :dietType" , nativeQuery = true)
	List<FoodEntity> getFilteredFoodByDietType(@Param("dietType") String foodCategory);
	
	
	@Query(value ="select count(*) from foods ",nativeQuery=true)
	Integer FoodCount();
	
	
	
	
}
