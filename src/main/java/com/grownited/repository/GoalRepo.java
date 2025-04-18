package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.grownited.DTO.*;

import com.grownited.entity.GoalEntity;

@Repository
public interface GoalRepo extends JpaRepository<GoalEntity , Integer>{

	@Query(value="SELECT *from goals g where g.user_Id=:user_Id ", nativeQuery=true)
	List<GoalEntity> goalentity(@Param("user_Id") Integer user_Id);
	
	@Query(value="SELECT u.first_name, u.lastname , u.email ,g.created_at ,g.goal_type, g.goal_id, g.status From users u Inner Join goals g ON u.user_id= g.user_id JOIN goalrequest r ON g.user_id =r.useriid where r.nutriid=:nutriid",nativeQuery=true)
	List<Goaldto> goals(@Param("nutriid") Integer user_id);
	
	Optional<GoalEntity> findByUserId(Integer userId);
}


