package com.kh.worknow.main.model.vo;


public class Company_View {

	private int    MEMBER_TYPE;      //타입코드
	private String MEMBER_ID;     //아이디
	private String MEMBER_NAME;   //이름
	private String MEMBER_PHONE;  //폰번호
	private String MEMBER_EMAIL;  //이메일
	private String COM_NUMBER; 	  //사업자등록번호
	private String COM_NAME;      //회사/점포명
	private String COM_ADDRESS;   //회사/점포주소
	private String COM_CEO; 	  //대표자명
	private String COM_PHONE;     //회사전화번호
	private int    CASH_NUMBER; 	  //돈수치
	
	
	public int getMEMBER_TYPE() {
		return MEMBER_TYPE;
	}
	public void setMEMBER_TYPE(int mEMBER_TYPE) {
		MEMBER_TYPE = mEMBER_TYPE;
	}
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}
	public void setMEMBER_NAME(String mEMBER_NAME) {
		MEMBER_NAME = mEMBER_NAME;
	}
	public String getMEMBER_PHONE() {
		return MEMBER_PHONE;
	}
	public void setMEMBER_PHONE(String mEMBER_PHONE) {
		MEMBER_PHONE = mEMBER_PHONE;
	}
	public String getMEMBER_EMAIL() {
		return MEMBER_EMAIL;
	}
	public void setMEMBER_EMAIL(String mEMBER_EMAIL) {
		MEMBER_EMAIL = mEMBER_EMAIL;
	}
	public String getCOM_NUMBER() {
		return COM_NUMBER;
	}
	public void setCOM_NUMBER(String cOM_NUMBER) {
		COM_NUMBER = cOM_NUMBER;
	}
	public String getCOM_NAME() {
		return COM_NAME;
	}
	public void setCOM_NAME(String cOM_NAME) {
		COM_NAME = cOM_NAME;
	}
	public String getCOM_ADDRESS() {
		return COM_ADDRESS;
	}
	public void setCOM_ADDRESS(String cOM_ADDRESS) {
		COM_ADDRESS = cOM_ADDRESS;
	}
	public String getCOM_CEO() {
		return COM_CEO;
	}
	public void setCOM_CEO(String cOM_CEO) {
		COM_CEO = cOM_CEO;
	}
	public String getCOM_PHONE() {
		return COM_PHONE;
	}
	public void setCOM_PHONE(String cOM_PHONE) {
		COM_PHONE = cOM_PHONE;
	}
	public int getCASH_NUMBER() {
		return CASH_NUMBER;
	}
	public void setCASH_NUMBER(int cASH_NUMBER) {
		CASH_NUMBER = cASH_NUMBER;
	}
	
}
