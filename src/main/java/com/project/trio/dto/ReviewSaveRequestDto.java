package com.project.trio.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewSaveRequestDto {
	private int userId;
	private int productId;
	private String content;
}
