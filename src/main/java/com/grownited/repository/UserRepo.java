package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.UserEntity;

public interface UserRepo extends JpaRepository<UserEntity, Integer>{
	Optional<UserEntity> findByEmail(String email);
}
