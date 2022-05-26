package com.project.trio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.trio.model.NormalMemberInfo;
import com.project.trio.model.Notice_boards;
import com.project.trio.repository.Notice_BoardRepository;
import com.project.trio.repository.UserRepository;

@Service
public class Notice_BoardService {

	@Autowired
	private Notice_BoardRepository notice_boardRepository;

	@Autowired
	private UserRepository userRepository;

	@Transactional
	public void 글쓰기(Notice_boards notice_board, NormalMemberInfo normalmemberinfo) {
		notice_board.setCount(0);
		notice_board.setNormalmemberinfo(normalmemberinfo);
		notice_boardRepository.save(notice_board);
	}

	@Transactional(readOnly = true)
	public Page<Notice_boards> 글목록(Pageable pageable) {
		return notice_boardRepository.findAll(pageable);
	}

	@Transactional(readOnly = true)
	public Notice_boards 글상세보기(int id) {
		return notice_boardRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패: 아이디를 찾을 수 없습니다.");
		});
	}

	@Transactional
	public void 글삭제하기(int id) {
		notice_boardRepository.deleteById(id);
	}

	@Transactional
	public void 글수정하기(int id, Notice_boards requestBoard) {
		Notice_boards notice_board= notice_boardRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 찾기 실패: 아이디를 찾을 수 없습니다.");
		});
		notice_board.setTitle(requestBoard.getTitle());
		notice_board.setContent(requestBoard.getContent());
	}

	@Transactional
	public int updateCount(int id) {
		return notice_boardRepository.updateCount(id);
	}
}
