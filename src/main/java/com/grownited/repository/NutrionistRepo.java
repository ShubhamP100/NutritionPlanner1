package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.NutrionistEntity;
public interface NutrionistRepo extends JpaRepository<NutrionistEntity,Integer> {

               	
}
