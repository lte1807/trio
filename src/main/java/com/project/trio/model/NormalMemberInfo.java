package com.project.trio.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Entity 
@SequenceGenerator(
		name = "NORMAL_MEMBER_INFO_SEQ_GENERATOR"
		, sequenceName = "NORMAL_MEMBER_INFO_SEQ"
		, initialValue = 1
		, allocationSize = 1)
@Table(name="normal_member_info")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder 
@DynamicInsert
public class NormalMemberInfo {
	
	
	@Id //Primary key
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="NORMAL_MEMBER_INFO_GENERATOR")
	private int id; 
	
	
	@Column(nullable = false, length = 30) 
	private String nname;
	
	@Column(nullable = false, length = 50)
	private String nemail; 
	
	@Column(nullable = false, length = 50)
	private String nid;
	
	@Column(nullable = false, length = 80)
	private String npw;
	
	@Column(nullable = false, length = 10)
	private String nbir;
	
	@Column(nullable = false, length = 30)
	private String ntel; 

	@Column(nullable = false, length = 100)
	private String naddress; 
	
	@Column(nullable = false, length = 100)
	private String ndeaddress; 
	
	@Column(nullable = false, length = 10)
	private String npost; 
	
	@Enumerated(EnumType.STRING)
	private RoleType role; 
	
	@CreationTimestamp
	private Timestamp createDate;
	
}