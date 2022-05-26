package com.project.trio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.trio.dto.ReplySaveRequestDto;
import com.project.trio.model.NormalMemberInfo;
import com.project.trio.model.Qna_boards;
import com.project.trio.model.Reply;
import com.project.trio.repository.Qna_BoardRepository;
import com.project.trio.repository.ReplyRepository;
import com.project.trio.repository.UserRepository;

@Service
public class Qna_BoardService {
	
	@Autowired
	private Qna_BoardRepository qna_boardRepository;

	@Autowired
	private ReplyRepository replyRepository;

	@Autowired
	private UserRepository userRepository;

	@Transactional
	public void 글쓰기(Qna_boards qna_board, NormalMemberInfo normalmemberinfo) {
		qna_board.setCount(0);
		qna_board.setNormalmemberinfo(normalmemberinfo);
		qna_boardRepository.save(qna_board);
	}

	@Transactional(readOnly = true)
	public Page<Qna_boards> 글목록(Pageable pageable) {
		return qna_boardRepository.findAll(pageable);
	}

	@Transactional(readOnly = true)
	public Qna_boards 글상세보기(int id) {
		return qna_boardRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패: 아이디를 찾을 수 없습니다.");
		});
	}

	@Transactional
	public void 글삭제하기(int id) {
		qna_boardRepository.deleteById(id);
	}

	@Transactional
	public void 글수정하기(int id, Qna_boards requestBoard) {
		Qna_boards qna_board = qna_boardRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 찾기 실패: 아이디를 찾을 수 없습니다.");
		});
		qna_board.setTitle(requestBoard.getTitle());
		qna_board.setContent(requestBoard.getContent());
		qna_board.setQna_category(requestBoard.getQna_category());
	}

	@Transactional
	public void 댓글쓰기(ReplySaveRequestDto replySaveRequestDto) {

		NormalMemberInfo normalmemberinfo = userRepository.findById(replySaveRequestDto.getUserId()).orElseThrow(() -> {
			return new IllegalArgumentException("댓글 쓰기 실패: 유저 아이디를 찾을 수 없습니다.");
		});

		Qna_boards qna_board = qna_boardRepository.findById(replySaveRequestDto.getBoardId()).orElseThrow(() -> {
			return new IllegalArgumentException("댓글 쓰기 실패: 게시글 아이디를 찾을 수 없습니다.");
		});

		Reply reply = Reply.builder().normalmemberinfo(normalmemberinfo).qna_boards(qna_board).content(replySaveRequestDto.getContent()).build();

		replyRepository.save(reply);
	}

	@Transactional
	public void 댓글삭제(int replyId) {
		replyRepository.deleteById(replyId);
	}

	@Transactional
	public int updateCount(int id) {
		return qna_boardRepository.updateCount(id);
	}
}
