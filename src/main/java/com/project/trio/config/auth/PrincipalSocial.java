package com.project.trio.config.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.project.trio.model.SocialMemberInfo;

import lombok.Data;

@Data
public class PrincipalSocial implements UserDetails, OAuth2User {

	private static final long serialVersionUID = 1L;
	private SocialMemberInfo socialmemberinfo;
	private Map<String, Object> attributes;
	
	public SocialMemberInfo getSocialmemberinfo() {
		return socialmemberinfo;
	}

	// OAuth 로그인
	public PrincipalSocial(SocialMemberInfo socialmemberinfo, Map<String, Object> attributes) {
		this.socialmemberinfo = socialmemberinfo;
		this.attributes = attributes;
	}

	@Override
	public String getPassword() {
		return socialmemberinfo.getSpw();
	}

	@Override
	public String getUsername() {
		return socialmemberinfo.getSid();
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
		collectors.add(() -> {return "ROLE_"+socialmemberinfo.getRole();});
		return collectors;
	}

	@Override
	public Map<String, Object> getAttributes() {
		return attributes;
	}

	@Override
	public String getName() {
		return socialmemberinfo.getId() + "";
	}

}