package com.kh.worknow.main.model.vo;

import java.util.Date;

public class Resume_Board {
	private int RESUME_LEVEL;//	게시레벨	NUMBER
	private String RESUME_TYPE;//	직종분류	VARCHAR2(300)
	private Date RESUME_STARTTIME;//	시작시간	DATE
	private Date RESUME_ENDTIME;//	끝시간	DATE
	private Date RESUME_STARTDAY;//	시작날	DATE
	private Date RESUME_ENDDAY;//	끝날	DATE
	private String RESUME_CONTENT;//	이력서본문	VARCHAR2(3000)
	private String RESUME_ID;//	등록자ID	VARCHAR2(100)
	private Date RESUME_ENDDATE;//	등록종료시간	DATE
	private int RESUME_PUBLIC;//	공개여부	NUMBER
	private Date RESUME_DATE;//	등록날짜	DATE	
	
	public Date getRESUME_DATE() {
		return RESUME_DATE;
	}
	public void setRESUME_DATE(Date rESUME_DATE) {
		RESUME_DATE = rESUME_DATE;
	}
	public int getRESUME_LEVEL() {
		return RESUME_LEVEL;
	}
	public void setRESUME_LEVEL(int rESUME_LEVEL) {
		RESUME_LEVEL = rESUME_LEVEL;
	}
	public String getRESUME_TYPE() {
		return RESUME_TYPE;
	}
	public void setRESUME_TYPE(String rESUME_TYPE) {
		RESUME_TYPE = rESUME_TYPE;
	}
	public Date getRESUME_STARTTIME() {
		return RESUME_STARTTIME;
	}
	public void setRESUME_STARTTIME(Date rESUME_STARTTIME) {
		RESUME_STARTTIME = rESUME_STARTTIME;
	}
	public Date getRESUME_ENDTIME() {
		return RESUME_ENDTIME;
	}
	public void setRESUME_ENDTIME(Date rESUME_ENDTIME) {
		RESUME_ENDTIME = rESUME_ENDTIME;
	}
	public Date getRESUME_STARTDAY() {
		return RESUME_STARTDAY;
	}
	public void setRESUME_STARTDAY(Date rESUME_STARTDAY) {
		RESUME_STARTDAY = rESUME_STARTDAY;
	}
	public Date getRESUME_ENDDAY() {
		return RESUME_ENDDAY;
	}
	public void setRESUME_ENDDAY(Date rESUME_ENDDAY) {
		RESUME_ENDDAY = rESUME_ENDDAY;
	}
	public String getRESUME_CONTENT() {
		return RESUME_CONTENT;
	}
	public void setRESUME_CONTENT(String rESUME_CONTENT) {
		RESUME_CONTENT = rESUME_CONTENT;
	}
	public String getRESUME_ID() {
		return RESUME_ID;
	}
	public void setRESUME_ID(String rESUME_ID) {
		RESUME_ID = rESUME_ID;
	}
	public Date getRESUME_ENDDATE() {
		return RESUME_ENDDATE;
	}
	public void setRESUME_ENDDATE(Date rESUME_ENDDATE) {
		RESUME_ENDDATE = rESUME_ENDDATE;
	}
	public int getRESUME_PUBLIC() {
		return RESUME_PUBLIC;
	}
	public void setRESUME_PUBLIC(int rESUME_PUBLIC) {
		RESUME_PUBLIC = rESUME_PUBLIC;
	}
	

}
