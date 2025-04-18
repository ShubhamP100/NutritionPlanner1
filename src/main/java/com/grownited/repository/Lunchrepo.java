package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
//import com.grownited.DTO.*;
import java.util.*;

import com.grownited.entity.LunchEntity;
import com.grownited.entity.*;
@Repository

public interface Lunchrepo extends JpaRepository<LunchEntity , Integer> {

	@Query(value="SELECT f.* FROM foods f INNER JOIN lunch l ON f.foodid = l.fooodid  WHERE l.userid =:lid",nativeQuery=true)
	List<FoodEntity> lunchmeal(@Param("lid") Integer userid);
	
	
	
}
