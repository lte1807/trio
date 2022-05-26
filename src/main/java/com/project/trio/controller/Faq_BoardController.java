package com.project.trio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.trio.service.Faq_BoardService;

@Controller
public class Faq_BoardController {

	@Autowired
	private Faq_BoardService faq_boardService;
	
	@GetMapping({ "/faq_board" })
	public String faq_board(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/faq_list";
	}

	@GetMapping({ "/auth/faq_board" })
	public String faq_board_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/faq_list";
	}
	
	
	@GetMapping("/faq_board/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("faq_board", faq_boardService.글상세보기(id));
		return "faq_board/updateForm";
	}
	
	@GetMapping({ "/faq_board/category_1" })
	public String faq_board_category1(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/category_1";
	}
	
	@GetMapping({ "/auth/faq_board/category_1" })
	public String faq_board_category1_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/category_1";
	}

	@GetMapping({ "/faq_board/category_2" })
	public String faq_board_category2(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/category_2";
	}
	
	@GetMapping({ "/auth/faq_board/category_2" })
	public String faq_board_category2_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/category_2";
	}
	
	@GetMapping({ "/faq_board/category_3" })
	public String faq_board_category3(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/category_3";
	}
	
	@GetMapping({ "/auth/faq_board/category_3" })
	public String faq_board_category3_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/category_3";
	}
	
	@GetMapping({ "/faq_board/category_4" })
	public String faq_board_category4(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/category_4";
	}
	
	@GetMapping({ "/auth/faq_board/category_4" })
	public String faq_board_category4_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("faq_boards", faq_boardService.글목록(pageable));
		return "faq_board/category_4";
	}

	@GetMapping({ "/faq_board/form" })
	public String saveForm() {
		return "faq_board/saveForm";
	}


}