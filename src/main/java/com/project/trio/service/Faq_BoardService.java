package com.project.trio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.trio.model.Faq_boards;
import com.project.trio.model.NormalMemberInfo;
import com.project.trio.repository.Faq_BoardRepository;

@Service
public class Faq_BoardService {

	@Autowired
	private Faq_BoardRepository faq_boardRepository;


	@Transactional
	public void 글쓰기(Faq_boards faq_board, NormalMemberInfo normalmemberinfo) {
		faq_board.setNormalmemberinfo(normalmemberinfo);
		faq_boardRepository.save(faq_board);
	}

	@Transactional(readOnly = true)
	public Page<Faq_boards> 글목록(Pageable pageable) {
		return faq_boardRepository.findAll(pageable);
	}

		
	@Transactional(readOnly = true)
	public Faq_boards 글상세보기(int id) {
		return faq_boardRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패: 아이디를 찾을 수 없습니다.");
		});
	}

	@Transactional
	public void 글삭제하기(int boardId) {
		faq_boardRepository.deleteById(boardId);
	}

	@Transactional
	public void 글수정하기(int id, Faq_boards requestBoard) {
		Faq_boards faq_board = faq_boardRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 찾기 실패: 아이디를 찾을 수 없습니다.");
		});
		faq_board.setTitle(requestBoard.getTitle());
		faq_board.setContent(requestBoard.getContent());
		faq_board.setFaq_category(requestBoard.getFaq_category());
	}
}
