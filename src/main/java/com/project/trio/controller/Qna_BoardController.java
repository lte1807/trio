package com.project.trio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.trio.service.Qna_BoardService;

@Controller
public class Qna_BoardController {

	@Autowired
	private Qna_BoardService qna_boardService;

	@GetMapping({ "/qna_board" })
	public String qna_board(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/qna_list";
	}
	
	@GetMapping({ "/auth/qna_board" })
	public String qna_board_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/qna_list";
	}
	
	@GetMapping("/qna_board/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("qna_board", qna_boardService.글상세보기(id));
		return "qna_board/updateForm";
	}

	@GetMapping("/qna_board/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("qna_board", qna_boardService.글상세보기(id));
		qna_boardService.updateCount(id);
		model.addAttribute("qna_boards", qna_boardService.글상세보기(id));
		return "qna_board/detail";
	}
	
	@GetMapping("/auth/qna_board/{id}")
	public String findById_readonly(@PathVariable int id, Model model) {
		model.addAttribute("qna_board", qna_boardService.글상세보기(id));
		qna_boardService.updateCount(id);
		model.addAttribute("qna_boards", qna_boardService.글상세보기(id));
		return "qna_board/detail";
	}
	
	@GetMapping({ "/qna_board/category_1" })
	public String qna_board_category1(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_1";
	}
	
	@GetMapping({ "/auth/qna_board/category_1" })
	public String qna_board_category1_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_1";
	}

	@GetMapping({ "/qna_board/category_2" })
	public String qna_board_category2(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_2";
	}
	
	@GetMapping({ "/auth/qna_board/category_2" })
	public String qna_board_category2_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_2";
	}
	
	@GetMapping({ "/qna_board/category_3" })
	public String qna_board_category3(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_3";
	}
	
	@GetMapping({ "/auth/qna_board/category_3" })
	public String qna_board_category3_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_3";
	}
	
	@GetMapping({ "/qna_board/category_4" })
	public String qna_board_category4(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_4";
	}
	
	@GetMapping({ "/auth/qna_board/category_4" })
	public String qna_board_category4_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_4";
	}
	
	@GetMapping({ "/qna_board/category_5" })
	public String qna_board_category5(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_5";
	}
	
	@GetMapping({ "/auth/qna_board/category_5" })
	public String qna_board_category5_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("qna_boards", qna_boardService.글목록(pageable));
		return "qna_board/category_5";
	}
	
	@GetMapping({"/qna_board/form"})
	public String saveForm() {
	return "qna_board/saveForm";	
	}
}
