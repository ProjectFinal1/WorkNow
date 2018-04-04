package com.kh.worknow.member.model.vo;

import java.sql.Date;

public class Member {
	private String memberId;
	private String memberPass;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private int memberType;
	private Date memberDate;
	private int memberBlack;
	
	public Member() {}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPass() {
		return memberPass;
	}

	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public int getMemberType() {
		return memberType;
	}

	public void setMemberType(int memberType) {
		this.memberType = memberType;
	}

	public Date getMemberDate() {
		return memberDate;
	}

	public void setMemberDate(Date memberDate) {
		this.memberDate = memberDate;
	}

	public int getMemberBlack() {
		return memberBlack;
	}

	public void setMemberBlack(int memberBlack) {
		this.memberBlack = memberBlack;
	}

		
	
	
	}


