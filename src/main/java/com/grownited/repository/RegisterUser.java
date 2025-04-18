package com.grownited.repository;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.DTO.registerdto;
import com.grownited.entity.RegesterEntity;
import com.grownited.entity.UserEntity;
@Repository
public interface RegisterUser extends JpaRepository<RegesterEntity, Integer>{
    
	@Query(value="SELECT u.first_name , u.lastname, u.email ,u.city, u.contactno, r.age ,r.health_goal , r.height , r.medicalcondition ,r.weight,r.activity_level FROM users u INNER JOIN registeruser r ON  u.user_id = r.user_id WHERE u.user_id = :id" , nativeQuery=true)
	registerdto registerdetails(@Param("id") Integer id);
	//Optional<RegesterEntity> registerData = registerUserRepo.findByUserId(user.getUserId());



}