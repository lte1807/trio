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

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 
@SequenceGenerator(
		name = "ADMIN_MEMBER_INFO_SEQ_GENERATOR"
		, sequenceName = "ADMIN_MEMBER_INFO_INFO_SEQ")
@Table(name="admin_member_info")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder 

public class AdminMemberInfo {
	
	@Id //Primary key
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="ADMIN_MEMBER_INFO") 
	@Column(nullable = false, length = 20) 
	private String aid; 
	
	@Column(nullable = false, length = 70) 
	private String apw;
	
	@Column(nullable = false, length = 20) 
	private String aname; 
	
	@Column(nullable = false, length = 50)
	private String aemail; 
	
	@Column(nullable = false, length = 30)
	private String atel; 
	
	@Enumerated(EnumType.STRING)
	private RoleType role; 
	
	@CreationTimestamp
	private Timestamp createDate;

}
