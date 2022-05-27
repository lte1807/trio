package com.project.trio.model;

import java.sql.Timestamp;

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

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="notice_boards")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "NOTICE_BOARD_SEQ_GENERATOR"
		, sequenceName = "NOTICE_BOARD_SEQ"
		, initialValue =1
		,allocationSize=1
		)

public class Notice_boards {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="NOTICE_BOARD_SEQ_GENERATOR")
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
	
	@CreationTimestamp
	private Timestamp createDate;
	
	private String notice_category;
}

