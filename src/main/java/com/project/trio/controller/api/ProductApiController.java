package com.project.trio.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.trio.config.auth.PrincipalDetail;
import com.project.trio.dto.ResponseDto;
import com.project.trio.dto.ReviewSaveRequestDto;
import com.project.trio.model.Product;
import com.project.trio.service.ProductService;

@RestController
public class ProductApiController {

	@Autowired
	private ProductService productService;

	@PostMapping("/api/product")
	public ResponseDto<Integer> save(@RequestBody Product product, @AuthenticationPrincipal PrincipalDetail principal) {
		productService.글쓰기(product, principal.getNormalmemberinfo());
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@DeleteMapping("/api/product/{id}")
	public ResponseDto<Integer> deleteById(@PathVariable int id) {
		productService.글삭제하기(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@PutMapping("/api/product/{id}")
	public ResponseDto<Integer> update(@PathVariable int id, @RequestBody Product product) {
		productService.글수정하기(id, product);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	@PostMapping("/api/product/{productId}/review")
	public ResponseDto<Integer> reviewSave(@RequestBody ReviewSaveRequestDto reviewSaveRequestDto) {
		productService.리뷰쓰기(reviewSaveRequestDto);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@DeleteMapping("/api/product/{productId}/review/{reviewId}")
	public ResponseDto<Integer> reviewDelete(@PathVariable int reviewId) {
		productService.리뷰삭제(reviewId);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

}
