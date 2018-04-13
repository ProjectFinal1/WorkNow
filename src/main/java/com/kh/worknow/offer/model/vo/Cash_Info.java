package com.kh.worknow.offer.model.vo;

public class Cash_Info {
	
	private String cashId; //캐쉬 아이디
	private int cashNumber; //캐쉬 수치
	
	public Cash_Info(String cASH_ID, int cASH_NUMBER) {
		super();
		cashId = cASH_ID;
		cashNumber = cASH_NUMBER;
	}
	
	
	public String getCASH_ID() {
		return cashId;
	}
	public void setCASH_ID(String cASH_ID) {
		cashId = cASH_ID;
	}
	public int getCASH_NUMBER() {
		return cashNumber;
	}
	public void setCASH_NUMBER(int cASH_NUMBER) {
		cashNumber = cASH_NUMBER;
	}
	

}
