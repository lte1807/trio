package com.project.trio.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="faq_boards")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "FAQ_BOARD_SEQ_GENERATOR"
		, sequenceName = "FAQ_BOARD_SEQ"
		, initialValue =1
		,allocationSize=1
		)

public class Faq_boards {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="FAQ_BOARD_SEQ_GENERATOR")
	private int id;
	@Column(nullable=false, length=100)
	private String title;
	@Lob
	private String content;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="userId")
	private NormalMemberInfo normalmemberinfo;	
	
	private int faq_category;
}

