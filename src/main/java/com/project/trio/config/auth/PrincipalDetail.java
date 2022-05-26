package com.project.trio.config.auth;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.project.trio.model.NormalMemberInfo;

import lombok.Data;

@Data
public class PrincipalDetail implements UserDetails{

	private NormalMemberInfo normalmemberinfo;
	
	public NormalMemberInfo getNormalmemberinfo() {
		return normalmemberinfo;
	}
	

	// 일반 로그인
	public PrincipalDetail(NormalMemberInfo normalmemberinfo) {
		this.normalmemberinfo = normalmemberinfo;
	}

	@Override
	public String getPassword() {
		return normalmemberinfo.getNpw();
	}

	@Override
	public String getUsername() {
		return normalmemberinfo.getNid();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {

		Collection<GrantedAuthority> collectors = new ArrayList<GrantedAuthority>();
		collectors.add(() -> {return "ROLE_"+normalmemberinfo.getRole();});
		return collectors;
	}


}