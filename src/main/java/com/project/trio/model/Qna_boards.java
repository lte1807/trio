package com.project.trio.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.Formula;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="qna_boards")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "QNA_BOARD_SEQ_GENERATOR"
		, sequenceName = "QNA_BOARD_SEQ"
		, initialValue =1
		,allocationSize=1
		)

public class Qna_boards {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="QNA_BOARD_SEQ_GENERATOR")
	private int id;
	@Column(nullable=false, length=100)
	private String title;
	@Lob
	private String content;
	
	@ColumnDefault("0")
	private int count;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="userId")
	private NormalMemberInfo normalmemberinfo;
	
	@OneToMany (mappedBy="qna_boards", fetch=FetchType.EAGER, cascade=CascadeType.REMOVE)
	@JsonIgnoreProperties({"qna_board"})
	@OrderBy("id desc")
	private List<Reply> replys;
	
	@CreationTimestamp
	private Timestamp createDate;
	
	@Formula("(SELECT count(1) FROM reply r WHERE r.boardId = id)")
	private int replyCount;
	
	private int qna_category;
	}


