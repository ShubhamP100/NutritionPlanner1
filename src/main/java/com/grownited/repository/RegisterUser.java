package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.RegesterEntity;
public interface RegisterUser extends JpaRepository<RegesterEntity, Integer>{
    
}
