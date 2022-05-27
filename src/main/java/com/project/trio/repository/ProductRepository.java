package com.project.trio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.project.trio.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	@Modifying
	@Query("update Product p set p.count = p.count + 1 where p.id = :id")
	int updateCount(int id);
	
}
