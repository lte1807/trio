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
import com.project.trio.dto.ReplySaveRequestDto;
import com.project.trio.dto.ResponseDto;
import com.project.trio.model.Qna_boards;
import com.project.trio.service.Qna_BoardService;

@RestController
public class Qna_BoardApiController {

	@Autowired
	private Qna_BoardService qna_boardService;

	@PostMapping("/api/qna_board")
	public ResponseDto<Integer> save(@RequestBody Qna_boards qna_board, @AuthenticationPrincipal PrincipalDetail principal) {
		qna_boardService.글쓰기(qna_board, principal.getNormalmemberinfo());
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@DeleteMapping("/api/qna_board/{id}")
	public ResponseDto<Integer> deleteById(@PathVariable int id) {
		qna_boardService.글삭제하기(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@PutMapping("/api/qna_board/{id}")
	public ResponseDto<Integer> update(@PathVariable int id, @RequestBody Qna_boards qna_board) {
		qna_boardService.글수정하기(id, qna_board);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@PostMapping("/api/qna_board/{boardId}/reply")
	public ResponseDto<Integer> replySave(@RequestBody ReplySaveRequestDto replySaveRequestDto) {
		qna_boardService.댓글쓰기(replySaveRequestDto);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@DeleteMapping("/api/qna_board/{boardId}/reply/{replyId}")
	public ResponseDto<Integer> replyDelete(@PathVariable int replyId) {
		qna_boardService.댓글삭제(replyId);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}
