package com.kh.worknow.main.model.vo;

import java.util.Date;

public class Job_Board {
	private Date	JOB_DATE;	//등록날짜	DATE
	private int	JOB_LEVEL;	//게시레벨	NUMBER
	private String	JOB_SUBJECT;	//제목	VARCHAR2(300)
	private String	JOB_TYPE;	//직종분류	VARCHAR2(60)
	private String	JOB_PHOTO;	//사진파일이름	VARCHAR2(200)
	private int	JOB_VALUE;	//급여	NUMBER
	private String	JOB_VALUETYPE;		//	지급분류	VARCHAR2(60)
	private Date JOB_STARTTIME;//	시작시간	DATE
	private Date	JOB_ENDTIME;	//끝시간	DATE
	private Date	JOB_STARTDAY;//	시작날	DATE
	private Date	JOB_ENDDAY;//	끝날	DATE
	private String	JOB_CONTENT;//	본문	VARCHAR2(3000)
	private String JOB_ID;	//등록자ID	VARCHAR2(100)
	private String JOB_KEY;	//분류번호	VARCHAR2(100)
	private Date	JOB_ENDDATE;	//등록종료시간	DATE
	private int	JOB_MAX_NUM;	//최대구인수	NUMBER
	private int	JOB_CURRENT_NUM;//	현재구인수	NUMBER
	private int	JOB_PUBLIC;	//공개여부	NUMBER	

	public Job_Board() {}
	
	
	public Date getJOB_DATE() {
			return JOB_DATE;
	}
	public void setJOB_DATE(Date jOB_DATE) {
			JOB_DATE = jOB_DATE;
	}
	public int getJOB_LEVEL() {
			return JOB_LEVEL;
	}
	public void setJOB_LEVEL(int jOB_LEVEL) {
			JOB_LEVEL = jOB_LEVEL;
	}
	public String getJOB_SUBJECT() {
			return JOB_SUBJECT;
	}
	public void setJOB_SUBJECT(String jOB_SUBJECT) {
			JOB_SUBJECT = jOB_SUBJECT;
	}
	public String getJOB_TYPE() {
			return JOB_TYPE;
	}
	public void setJOB_TYPE(String jOB_TYPE) {
			JOB_TYPE = jOB_TYPE;
	}
	public String getJOB_PHOTO() {
			return JOB_PHOTO;
	}
	public void setJOB_PHOTO(String jOB_PHOTO) {
			JOB_PHOTO = jOB_PHOTO;
	}
	public int getJOB_VALUE() {
			return JOB_VALUE;
	}
	public void setJOB_VALUE(int jOB_VALUE) {
			JOB_VALUE = jOB_VALUE;
	}
	public String getJOB_VALUETYPE() {
			return JOB_VALUETYPE;
	}
	public void setJOB_VALUETYPE(String jOB_VALUETYPE) {
			JOB_VALUETYPE = jOB_VALUETYPE;
	}
	public Date getJOB_STARTTIME() {
			return JOB_STARTTIME;
	}
	public void setJOB_STARTTIME(Date jOB_STARTTIME) {
			JOB_STARTTIME = jOB_STARTTIME;
	}
	public Date getJOB_ENDTIME() {
			return JOB_ENDTIME;
	}
	public void setJOB_ENDTIME(Date jOB_ENDTIME) {
			JOB_ENDTIME = jOB_ENDTIME;
	}
	public Date getJOB_STARTDAY() {
			return JOB_STARTDAY;
	}
	public void setJOB_STARTDAY(Date jOB_STARTDAY) {
			JOB_STARTDAY = jOB_STARTDAY;
	}
	public Date getJOB_ENDDAY() {
			return JOB_ENDDAY;
	}
	public void setJOB_ENDDAY(Date jOB_ENDDAY) {
			JOB_ENDDAY = jOB_ENDDAY;
	}
	public String getJOB_CONTENT() {
			return JOB_CONTENT;
	}
	public void setJOB_CONTENT(String jOB_CONTENT) {
			JOB_CONTENT = jOB_CONTENT;
	}
	public String getJOB_ID() {
			return JOB_ID;
	}
	public void setJOB_ID(String jOB_ID) {
			JOB_ID = jOB_ID;
	}
	public String getJOB_KEY() {
			return JOB_KEY;
	}
	public void setJOB_KEY(String jOB_KEY) {
			JOB_KEY = jOB_KEY;
	}
	public Date getJOB_ENDDATE() {
			return JOB_ENDDATE;
	}
	public void setJOB_ENDDATE(Date jOB_ENDDATE) {
			JOB_ENDDATE = jOB_ENDDATE;
	}
	public int getJOB_MAX_NUM() {
			return JOB_MAX_NUM;
	}
	public void setJOB_MAX_NUM(int jOB_MAX_NUM) {
			JOB_MAX_NUM = jOB_MAX_NUM;
	}
	public int getJOB_CURRENT_NUM() {
			return JOB_CURRENT_NUM;
	}
	public void setJOB_CURRENT_NUM(int jOB_CURRENT_NUM) {
			JOB_CURRENT_NUM = jOB_CURRENT_NUM;
	}
	public int getJOB_PUBLIC() {
			return JOB_PUBLIC;
	}
	public void setJOB_PUBLIC(int jOB_PUBLIC) {
			JOB_PUBLIC = jOB_PUBLIC;
	}
}
