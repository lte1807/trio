package com.project.trio.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.trio.model.Review;

public interface ReviewRepository extends JpaRepository<Review,Integer>{
}
