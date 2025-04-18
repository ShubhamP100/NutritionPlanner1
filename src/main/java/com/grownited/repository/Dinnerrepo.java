package com.grownited.repository;

//import com.grownited.DTO.*;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.DinnerEntity;
import com.grownited.entity.FoodEntity;


@Repository

public interface Dinnerrepo extends JpaRepository<DinnerEntity ,Integer>  {
   
	@Query(value="SELECT f.* FROM foods f INNER JOIN dinner d ON f.foodid = d.foodid  WHERE d.userid =:did;",nativeQuery=true)
	List<FoodEntity> dinnermeal(@Param("did") Integer userid);

   
}
