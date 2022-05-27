package com.project.trio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.trio.service.Notice_BoardService;

@Controller
public class Notice_BoardController {

	@Autowired
	private Notice_BoardService notice_boardService;

	@GetMapping({ "/notice_board" })
	public String notice_board(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("notice_boards", notice_boardService.글목록(pageable));
		return "notice_board/notice_list";
	}
	
	@GetMapping({"/auth/notice_board"})
	public String notice_board_readonly(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("notice_boards", notice_boardService.글목록(pageable));

		return "notice_board/notice_list";	
	

	}

	@GetMapping("/notice_board/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("notice_board", notice_boardService.글상세보기(id));
		return "notice_board/updateForm";
	}

	@GetMapping("/notice_board/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("notice_board", notice_boardService.글상세보기(id));
		notice_boardService.updateCount(id);
		model.addAttribute("notice_boards", notice_boardService.글상세보기(id));
		return "notice_board/detail";
	}

	@GetMapping({ "/notice_board/form" })
	public String saveForm() {
		return "notice_board/saveForm";
	}	
	
	@GetMapping("/auth/notice_board/{id}")
	public String findById_readonly(@PathVariable int id, Model model) {
		model.addAttribute("notice_board", notice_boardService.글상세보기(id));
		notice_boardService.updateCount(id);
		model.addAttribute("notice_boards", notice_boardService.글상세보기(id));
		return "notice_board/detail";
	}
}
