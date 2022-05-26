package com.project.trio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.project.trio.model.Notice_boards;

public interface Notice_BoardRepository extends JpaRepository<Notice_boards, Integer> {

	@Modifying
	@Query("update Notice_boards b set b.count = b.count + 1 where b.id = :id")
	int updateCount(int id);
}
