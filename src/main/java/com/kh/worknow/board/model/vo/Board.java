package com.kh.worknow.board.model.vo;

import java.sql.Date;

public class Board {
private static final long serialVersionUID = 3000000L;	
	private int boardNum;
	private String boardName;
	private String boardSubject;
	private String boardContent;
	private int boardCount;
	private String boardDate;
	private int replyCount;
	

	private String boardType;
	private String boardPhoto;
	private int replyCheck;	// 1 : O, 2 : X
	
	
	public Board(){}		

 	public Board(String boardTitle, String boardWriter, String boardContent, String boardOriginalFileName,	String boardRenameFileName) {        
		super();
		this.boardTitle = boardTitle;
		this.boardWriter = boardWriter;
		this.boardContent = boardContent;
		this.boardOriginalFileName = boardOriginalFileName;
		this.boardRenameFileName = boardRenameFileName;
	}

	public Board(int boardNum, String boardName, String boardSubject, String boardContent, int boardCount,
			String boardDate, int replyCount) {
		super();
		this.boardNum = boardNum;
		this.boardName = boardName;
		this.boardSubject = boardSubject;
		this.boardContent = boardContent;
		this.boardCount = boardCount;
		this.boardDate = boardDate;
		this.replyCount = replyCount;
	}

	public Board(int boardNum, String boardName, String boardSubject, String boardContent, int boardCount,
			String boardDate, String boardType, String boardPhoto, int replyCheck) {
		super();
		this.boardNum = boardNum;
		this.boardName = boardName;
		this.boardSubject = boardSubject;
		this.boardContent = boardContent;
		this.boardCount = boardCount;
		this.boardDate = boardDate;
		this.boardType = boardType;
		this.boardPhoto = boardPhoto;
		this.replyCheck = replyCheck;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public String getBoardSubject() {
		return boardSubject;
	}

	public void setBoardSubject(String boardSubject) {
		this.boardSubject = boardSubject;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getBoardPhoto() {
		return boardPhoto;
	}

	public void setBoardPhoto(String boardPhoto) {
		this.boardPhoto = boardPhoto;
	}

	public int getReplyCheck() {
		return replyCheck;
	}

	public void setReplyCheck(int replyCheck) {
		this.replyCheck = replyCheck;
	}	
}
