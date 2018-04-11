package com.kh.worknow.offer.model.vo;

public class Cash_Info {
	
	private String CASH_ID; //캐쉬 아이디
	private int CASH_NUMBER; //캐쉬 수치
	
	public Cash_Info(String cASH_ID, int cASH_NUMBER) {
		super();
		CASH_ID = cASH_ID;
		CASH_NUMBER = cASH_NUMBER;
	}
	
	
	public String getCASH_ID() {
		return CASH_ID;
	}
	public void setCASH_ID(String cASH_ID) {
		CASH_ID = cASH_ID;
	}
	public int getCASH_NUMBER() {
		return CASH_NUMBER;
	}
	public void setCASH_NUMBER(int cASH_NUMBER) {
		CASH_NUMBER = cASH_NUMBER;
	}
	

}
