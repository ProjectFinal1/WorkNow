package com.kh.worknow.board.model.vo;

public class Reply {
private static final long serialVersionUID = 3000000L;
	
	private int replyNum;
	private int replyLevel;
	private String replyName;	
	private String replySubject;	
	private String replyContent;
	private String replyDate;
	
	public Reply(){}

	public Reply(int replyNum, int replyLevel, String replyName, String replyContent, String replyDate) {
		super();
		this.replyNum = replyNum;
		this.replyLevel = replyLevel;
		this.replyName = replyName;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
	}

	public Reply(int replyNum, String replyName, String replySubject, String replyContent, String replyDate) {
		super();
		this.replyNum = replyNum;
		this.replyName = replyName;
		this.replySubject = replySubject;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
	}

	public int getReplyNum() {
		return replyNum;
	}

	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}
	
	public int getReplyLevel() {
		return replyLevel;
	}

	public void setReplyLevel(int replyLevel) {
		this.replyLevel = replyLevel;
	}

	public String getReplyName() {
		return replyName;
	}

	public void setReplyName(String replyName) {
		this.replyName = replyName;
	}	

	public String getReplySubject() {
		return replySubject;
	}

	public void setReplySubject(String replySubject) {
		this.replySubject = replySubject;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}
}
