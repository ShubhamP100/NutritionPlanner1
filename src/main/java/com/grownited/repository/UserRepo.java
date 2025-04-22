package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.grownited.entity.GoalEntity;
import com.grownited.entity.UserEntity;

public interface UserRepo extends JpaRepository<UserEntity, Integer>{
	
	Optional<UserEntity> findByEmail(String email);
	
	@Query(value="select* from users where role = 'nutrionist'",nativeQuery=true)
	List<UserEntity> fetchAllNutritionist();
	
	List<UserEntity> findByRole(String role);
	
	@Query(value ="select g.* from goals g where g.user_id=:userid",nativeQuery=true)
	GoalEntity goaltype (@Param("userid") Integer userid); 
	
	@Query(value="select count(*) from users where role ='user'", nativeQuery=true)
	Integer UserCount();

	@Query(value="select count(*) from users where role ='Nutrionist'",nativeQuery=true)
	Integer NutriCount();
	
	@Query(value="select count(*) from users where month(created_at)=:value",nativeQuery=true)
	Integer Months(@Param("value") Integer value);
	
	
	
	
}
