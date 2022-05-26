package com.project.trio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.trio.dto.ReviewSaveRequestDto;
import com.project.trio.model.NormalMemberInfo;
import com.project.trio.model.Product;
import com.project.trio.model.Review;
import com.project.trio.repository.ProductRepository;
import com.project.trio.repository.ReviewRepository;
import com.project.trio.repository.UserRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ReviewRepository reviewRepository;

	@Autowired
	private UserRepository userRepository;


	@Transactional
	public void 글쓰기(Product product, NormalMemberInfo normalmemberinfo) {
		product.setNormalmemberinfo(normalmemberinfo);
		productRepository.save(product);
	}

	@Transactional(readOnly = true)
	public Page<Product> 글목록(Pageable pageable) {
		return productRepository.findAll(pageable);
	}

		
	@Transactional(readOnly = true)
	public Product 글상세보기(int id) {
		return productRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패: 아이디를 찾을 수 없습니다.");
		});
	}

	@Transactional
	public void 글삭제하기(int boardId) {
		productRepository.deleteById(boardId);
	}

	@Transactional
	public void 글수정하기(int id, Product requestBoard) {
		Product product = productRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 찾기 실패: 아이디를 찾을 수 없습니다.");
		});
		product.setTitle(requestBoard.getTitle());
		product.setContent(requestBoard.getContent());
		product.setProduct_category(requestBoard.getProduct_category());
	}
	
	@Transactional
	public void 리뷰쓰기(ReviewSaveRequestDto reviewSaveRequestDto) {

		NormalMemberInfo normalmemberinfo = userRepository.findById(reviewSaveRequestDto.getUserId()).orElseThrow(() -> {
			return new IllegalArgumentException("리뷰 쓰기 실패: 유저 아이디를 찾을 수 없습니다.");
		});

		Product product = productRepository.findById(reviewSaveRequestDto.getProductId()).orElseThrow(() -> {
			return new IllegalArgumentException("리뷰 쓰기 실패: 상품 아이디를 찾을 수 없습니다.");
		});

		Review review = Review.builder().normalmemberinfo(normalmemberinfo).product(product).content(reviewSaveRequestDto.getContent()).build();

		reviewRepository.save(review);
	}

	@Transactional
	public void 리뷰삭제(int reviewId) {
		reviewRepository.deleteById(reviewId);
	}

	@Transactional
	public int updateCount(int id) {
		return productRepository.updateCount(id);
	}
}
