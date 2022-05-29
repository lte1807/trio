package com.project.trio.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trio.config.auth.PrincipalDetail;

@Controller
public class CartController {
	
	@GetMapping("/cart")
	public @ResponseBody String user(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		return "cart";
	}

	@GetMapping("/cart/cart")
	public String cart() {
		return "cart/cart";
	}
	
	@GetMapping("/cart/order")
	public String cart_order() {
		return "cart/order";
	}
	
	
	
}
