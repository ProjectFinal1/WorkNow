package com.kh.worknow.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.member.model.dao.Com_InfoDao;
import com.kh.worknow.member.model.service.SignUpService;
import com.kh.worknow.member.model.vo.Com_Info;
import com.kh.worknow.member.model.vo.Personal_Info;

@Service("CominfoService")
public class Com_InfoService {
	
	@Autowired
	Com_InfoDao cominfoDao;
	
	//기업회원정보 삽입
	public int insertCominfo(Com_Info cominfo) {

		return cominfoDao.insertCominfo(cominfo);
	}

	//job_board용 기업회원 정보 넣기 
	public int insertCominfo_Jboard(Com_Info cominfo,String jboardkey) {

		return cominfoDao.insertCominfo_Jboard(cominfo,jboardkey);
	}
	
		

}
