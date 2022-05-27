package com.project.trio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.trio.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;

	@GetMapping({ "/product" })
	public String notice_board(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/product_list";
	}
	
	@GetMapping({"/auth/product"})
	public String notice_board_readonly(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/product_list";	
	}
	
	@GetMapping("/product/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("product", productService.글상세보기(id));
		productService.updateCount(id);
		model.addAttribute("product", productService.글상세보기(id));
		return "product/detail";
	}
	
	@GetMapping("/auth/product/{id}")
	public String findById_readonly(@PathVariable int id, Model model) {
		model.addAttribute("product", productService.글상세보기(id));
		productService.updateCount(id);
		model.addAttribute("product", productService.글상세보기(id));
		return "product/detail";
	}
	
	@GetMapping({ "/product/category_1" })
	public String product_category1(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/category_1";
	}
	
	@GetMapping({ "/auth/product/category_1" })
	public String product_category1_readonly(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/category_1";
	}
	
	@GetMapping({ "/product/category_2" })
	public String product_category2(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/category_2";
	}
	
	@GetMapping({ "/auth/product/category_2" })
	public String product_category2_readonly(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/category_2";
	}
	
	@GetMapping({ "/product/category_3" })
	public String product_category3(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/category_3";
	}
	
	@GetMapping({ "/auth/product/category_3" })
	public String product_category3_readonly(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/category_3";
	}

	@GetMapping({ "/product/category_4" })
	public String product_category4(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/category_4";
	}
	
	@GetMapping({ "/auth/product/category_4" })
	public String product_category4_readonly(Model model,
			@PageableDefault(size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("product", productService.글목록(pageable));
		return "product/category_4";
	}
	
	@GetMapping({ "/product/form" })
	public String saveForm() {
		return "product/saveForm";
	}	
	
}
