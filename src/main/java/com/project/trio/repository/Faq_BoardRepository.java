package com.project.trio.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.trio.model.Faq_boards;

public interface Faq_BoardRepository extends JpaRepository<Faq_boards, Integer> {
	
}