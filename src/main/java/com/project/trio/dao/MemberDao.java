package com.project.trio.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.project.trio.model.NormalMemberInfo;
import com.project.trio.repository.UserRepository;

@Component
public class MemberDao {
	
	@Autowired
	UserRepository userRepository;
	
	private List<NormalMemberInfo> normalmemberinfo;

	
	public NormalMemberInfo  findByNnameAndNemail(String nname, String nemail) {
		for(NormalMemberInfo normalMemberInfo : normalmemberinfo) {
			if(normalMemberInfo.getNname().equals(nname) && normalMemberInfo.getNemail().equals(nemail)) {
				return normalMemberInfo;
			}
		}
		
		return null;
	}



}
