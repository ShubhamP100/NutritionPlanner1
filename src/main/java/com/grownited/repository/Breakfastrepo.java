package com.grownited.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.grownited.entity.FoodEntity;
import java.util.*;
//import com.grownited.DTO.*;


import com.grownited.entity.BreakfastEntity;


@Repository
public interface Breakfastrepo extends JpaRepository<BreakfastEntity , Integer>{
 
	@Query(value="SELECT f.* FROM foods f INNER JOIN breakfast b ON f.foodid = b.foodid  WHERE b.userid =:bid;", nativeQuery=true)
    List<FoodEntity> breakfastmeal(@Param("bid") Integer userid);
}

