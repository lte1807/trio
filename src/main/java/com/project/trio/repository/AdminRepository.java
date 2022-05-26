package com.project.trio.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.trio.model.AdminMemberInfo;

public interface AdminRepository extends JpaRepository<AdminMemberInfo,Integer>{
	Optional<AdminMemberInfo> findByaid(String username); 

}
