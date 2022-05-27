package com.project.trio.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.project.trio.model.AdminMemberInfo;

public interface AdminRepository extends JpaRepository<AdminMemberInfo,Integer>{
	AdminMemberInfo findByaid(String aid); 
	AdminMemberInfo findByaname(String aname);

}
