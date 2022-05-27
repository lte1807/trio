package com.project.trio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.trio.model.NormalMemberInfo;

public interface UserRepository extends JpaRepository<NormalMemberInfo,Integer>{
	NormalMemberInfo findByNid(String nid);
	NormalMemberInfo findByNnameAndNemail(String nname, String neamil);
	}
