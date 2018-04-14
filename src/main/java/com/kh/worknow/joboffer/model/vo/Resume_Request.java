package com.kh.worknow.joboffer.model.vo;

import java.util.Date;

public class Resume_Request {
	private String resumeId;		//	등록자ID	VARCHAR2(100)
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
	
	private Date requestDate;
	private String requestKey;
	
	private int requestStatus;
	private int requestType;
	
	
	public Resume_Request() {};
	
	public Resume_Request(String string) {
		this.resumeId = string;
	}

	public String getResumeId() {
		return resumeId;
	}


	public void setResumeId(String resumeId) {
		this.resumeId = resumeId;
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


	


	public String getRequestKey() {
		return requestKey;
	}


	public void setRequestKey(String requestKey) {
		this.requestKey = requestKey;
	}


	public int getRequestStatus() {
		return requestStatus;
	}


	public void setRequestStatus(int requestStatus) {
		this.requestStatus = requestStatus;
	}


	public int getRequestType() {
		return requestType;
	}


	public void setRequestType(int requestType) {
		this.requestType = requestType;
	}








	public Date getRequestDate() {
		return requestDate;
	}








	public void setRequestDate(Date requestDate) {
		this.requestDate = requestDate;
	};
	
	
	
	
	
}

	
