package com.project.trio.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trio.config.auth.PrincipalDetail;

@Controller
public class UserController {

	// Get
	@GetMapping("/user")
	public @ResponseBody String user(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		return "user";
	}

	@GetMapping("/admin")
	public @ResponseBody String admin() {
		return "admin";
	}

	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}

	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	

	@GetMapping("/auth/findIdPw")
	public String findIdPw() {
		return "user/findIdPw";
	}
	
	@GetMapping("/auth/findPw")
	String findPw(){
		return "user/findPw";
	}

	@GetMapping("/user/Userupdate")
	public String Userupdate() {
		return "user/Userupdate";
	}
	

	@GetMapping("/user/Socialupdate")
	public String Socialupdate() {
		return "user/Socialupdate";
	}

	@GetMapping("/user/mypage")
	public String mypage() {
		return "user/mypage";
	}

	@GetMapping("/user/notice")
	public String notice() {
		return "user/notice";
	}

	@GetMapping("/user/QNA")
	public String QNA() {
		return "user/QNA";
	}
	

	@GetMapping("/user/QNA_write")
	public String QNA_write() {
		return "user/QNA_write";
	}
	

	@GetMapping("/user/FAQ")
	public String FAQ() {
		return "user/FAQ";
	}

}
