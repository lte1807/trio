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
import com.project.trio.model.Notice_boards;
import com.project.trio.service.Notice_BoardService;

@RestController
public class Notice_BoardApiController {

	@Autowired
	private Notice_BoardService notice_boardService;

	@PostMapping("/api/notice_board")
	public ResponseDto<Integer> save(@RequestBody Notice_boards notice_board, @AuthenticationPrincipal PrincipalDetail principal) {
		notice_boardService.글쓰기(notice_board, principal.getNormalmemberinfo());
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@DeleteMapping("/api/notice_board/{id}")
	public ResponseDto<Integer> deleteById(@PathVariable int id) {
		notice_boardService.글삭제하기(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@PutMapping("/api/notice_board/{id}")
	public ResponseDto<Integer> update(@PathVariable int id, @RequestBody Notice_boards notice_board) {
		notice_boardService.글수정하기(id, notice_board);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

}
