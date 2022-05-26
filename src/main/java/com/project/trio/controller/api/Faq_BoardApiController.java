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
import com.project.trio.model.Faq_boards;
import com.project.trio.service.Faq_BoardService;

@RestController
public class Faq_BoardApiController {

	@Autowired
	private Faq_BoardService faq_boardService;

	@PostMapping("/api/faq_board")
	public ResponseDto<Integer> save(@RequestBody Faq_boards faq_board,	@AuthenticationPrincipal PrincipalDetail principal) {
		faq_boardService.글쓰기(faq_board, principal.getNormalmemberinfo());
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@DeleteMapping("/api/faq_board/{boardId}")
	public ResponseDto<Integer> boardDelete(@PathVariable int boardId) {
		faq_boardService.글삭제하기(boardId);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@PutMapping("/api/faq_board/{id}")
	public ResponseDto<Integer> update(@PathVariable int id, @RequestBody Faq_boards faq_board) {
		faq_boardService.글수정하기(id, faq_board);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

}
