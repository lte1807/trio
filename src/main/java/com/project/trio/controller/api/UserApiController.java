package com.project.trio.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.trio.dto.ResponseDto;
import com.project.trio.model.NormalMemberInfo;
import com.project.trio.service.UserService;

@RestController
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@PostMapping("/auth/join") // 회원가입
	public ResponseDto<Integer> save(@RequestBody NormalMemberInfo normalmemberinfo) { 
		userService.회원가입(normalmemberinfo);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PutMapping("/user")
	public ResponseDto<Integer> update(@RequestBody NormalMemberInfo normalmemberinfo){
		userService.회원수정(normalmemberinfo);
		
		Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(normalmemberinfo.getNid(), normalmemberinfo.getNpw()));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	

}