package com.grownited.repository;

//import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.grownited.entity.RequestEntity;

@Repository
public interface Requestrepo extends JpaRepository<RequestEntity, Integer>{

	
}

