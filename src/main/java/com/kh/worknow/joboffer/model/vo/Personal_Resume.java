package com.kh.worknow.joboffer.model.vo;

import java.util.Date;
public class Personal_Resume {
	private String memberId;
	private String memberPass;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private int memberType;
	private Date memberDate;
	private int memberBlack;	
	
	
	private String perTalk;
	private int perAge;
	private String perAddress;
	private String perSex; 
	private String perPhoto;
	
	private Date resumeDate;		//	등록날짜	DATE
	private int resumeLevel;		//	게시레벨	NUMBER
	private String resumeType;		//	직종분류	VARCHAR2(300)
	
	private Date resumeStarttime;	//	시작시간	DATE
	private Date resumeEndtime;	//	끝시간	DATE
	
	private Date resumeStartDay;	//	시작날	DATE	
	private Date resumeEndday;		//	끝날	DATE
	
	private String resumeContent;	//	이력서본문	VARCHAR2(3000)
	private Date resumeEnddate;	//	등록종료시간	DATE
	private int resumePublic;		//	공개여부	NUMBER
	
	public Personal_Resume () {};
	
	
	
	
	
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
	public String getPerTalk() {
		return perTalk;
	}
	public void setPerTalk(String perTalk) {
		this.perTalk = perTalk;
	}
	public int getPerAge() {
		return perAge;
	}
	public void setPerAge(int perAge) {
		this.perAge = perAge;
	}
	public String getPerAddress() {
		return perAddress;
	}
	public void setPerAddress(String perAddress) {
		this.perAddress = perAddress;
	}
	public String getPerSex() {
		return perSex;
	}
	public void setPerSex(String perSex) {
		this.perSex = perSex;
	}
	public String getPerPhoto() {
		return perPhoto;
	}
	public void setPerPhoto(String perPhoto) {
		this.perPhoto = perPhoto;
	}
	public Date getResumeDate() {
		return resumeDate;
	}
	public void setResumeDate(Date resumeDate) {
		this.resumeDate = resumeDate;
	}
	public int getResumeLevel() {
		return resumeLevel;
	}
	public void setResumeLevel(int resumeLevel) {
		this.resumeLevel = resumeLevel;
	}
	public String getResumeType() {
		return resumeType;
	}
	public void setResumeType(String resumeType) {
		this.resumeType = resumeType;
	}
	public Date getResumeStarttime() {
		return resumeStarttime;
	}
	public void setResumeStarttime(Date resumeStarttime) {
		this.resumeStarttime = resumeStarttime;
	}
	public Date getResumeEndtime() {
		return resumeEndtime;
	}
	public void setResumeEndtime(Date resumeEndtime) {
		this.resumeEndtime = resumeEndtime;
	}
	public Date getResumeStartDay() {
		return resumeStartDay;
	}
	public void setResumeStartDay(Date resumeStartDay) {
		this.resumeStartDay = resumeStartDay;
	}
	public Date getResumeEndday() {
		return resumeEndday;
	}
	public void setResumeEndday(Date resumeEndday) {
		this.resumeEndday = resumeEndday;
	}
	public String getResumeContent() {
		return resumeContent;
	}
	public void setResumeContent(String resumeContent) {
		this.resumeContent = resumeContent;
	}
	public Date getResumeEnddate() {
		return resumeEnddate;
	}
	public void setResumeEnddate(Date resumeEnddate) {
		this.resumeEnddate = resumeEnddate;
	}
	public int getResumePublic() {
		return resumePublic;
	}
	public void setResumePublic(int resumePublic) {
		this.resumePublic = resumePublic;
	}
	
	
	
}