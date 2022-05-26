package com.project.trio.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.trio.model.NormalMemberInfo;
import com.project.trio.repository.UserRepository;

@Service
public class PrincipalDetailService implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		NormalMemberInfo normalMemberInfo = userRepository.findByNid(username);
		if (normalMemberInfo == null) {
			System.out.println("null return error");
			return null;
		} else {
			return new PrincipalDetail(normalMemberInfo);
		}

	}
}