package com.grownited.repository;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.RegesterEntity;
import com.grownited.entity.UserEntity;
@Repository
public interface RegisterUser extends JpaRepository<RegesterEntity, Integer>{
    
	//@Query("SELECT u,r FROM UserEntity u JOIN RegisterEntity r ON u.userId = r.userId WHERE u.userId=:id")
	Optional<RegesterEntity> registerData = registerUserRepo.findByUserId(user.getUserId());



}
