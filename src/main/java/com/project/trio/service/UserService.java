package com.project.trio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.trio.model.NormalMemberInfo;
import com.project.trio.model.RoleType;
import com.project.trio.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private BCryptPasswordEncoder encoder;

	@Autowired
	private UserRepository userRepository;

	@Transactional
	public void 회원가입(NormalMemberInfo normalmemberinfo) {
		String rawPassword = normalmemberinfo.getNpw();
		String encPassword = encoder.encode(rawPassword);
		normalmemberinfo.setNpw(encPassword);
		normalmemberinfo.setRole(RoleType.USER);
		userRepository.save(normalmemberinfo);
	}

	@Transactional
	public void 회원수정(NormalMemberInfo normalmemberinfo) {
		NormalMemberInfo persistance = userRepository.findByNid(normalmemberinfo.getNid());

		String rawPassword = normalmemberinfo.getNpw();
		String encPassword = encoder.encode(rawPassword);
		persistance.setNpw(encPassword);
		persistance.setNemail(normalmemberinfo.getNemail());
		persistance.setNname(normalmemberinfo.getNname());
		persistance.setNbir(normalmemberinfo.getNbir());
		persistance.setNtel(normalmemberinfo.getNtel());
		persistance.setNaddress(normalmemberinfo.getNaddress());
		persistance.setNdeaddress(normalmemberinfo.getNdeaddress());
		persistance.setNpost(normalmemberinfo.getNpost());
	}

	public boolean userEmailCheck(String Nemail, String Nname) {

		NormalMemberInfo normalmemberinfo = userRepository.findByNid(Nemail);
		if (normalmemberinfo != null && normalmemberinfo.getNname().equals(Nname)) {
			return true;
		} else {
			return false;
		}
	}

}