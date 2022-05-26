package com.project.trio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.trio.model.Qna_boards;

public interface Qna_BoardRepository extends JpaRepository<Qna_boards, Integer> {

	@Modifying
	@Query("update Qna_boards q set q.count = q.count + 1 where q.id = :id")
	int updateCount(int id);
}
