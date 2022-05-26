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
		name = "SOCIAL_MEMBER_INFO_SEQ_GENERATOR"
		, sequenceName = "SOCIAL_MEMBER_INFO_SEQ"
		, initialValue = 1
		, allocationSize = 1)
@Table(name="social_member_info")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder 

public class SocialMemberInfo {
	
	
	@Id //Primary key
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="SOCIAL_MEMBER_INFO_GENERATOR")
	private int id; 
	
	
	@Column(nullable = false, length = 30) 
	private String sname;
	
	@Column(nullable = false, length = 50)
	private String semail; 
	
	@Column(nullable = false, length = 50)
	private String sid;
	
	@Column(length = 80)
	private String spw;
	
	@Column(length = 10)
	private String sbir;
	
	@Column(length = 30)
	private String stel; 

	@Column(length = 100)
	private String saddress; 
	
	@Column(length = 100)
	private String sdeaddress; 
	
	@Column(length = 10)
	private String spost; 
	
	@Column(nullable = false, length = 100)
	private String provider; 
	
	@Column(nullable = false, length = 100)
	private String providerId; 
	
	@Enumerated(EnumType.STRING)
	private RoleType role; 
	
	@CreationTimestamp
	private Timestamp createDate;
	
}
