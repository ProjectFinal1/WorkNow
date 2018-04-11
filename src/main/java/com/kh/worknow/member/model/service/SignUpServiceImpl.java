package com.kh.worknow.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.member.model.dao.SignUpDao;
import com.kh.worknow.member.model.service.SignUpService;
import com.kh.worknow.member.model.vo.Com_Info;
import com.kh.worknow.member.model.vo.Member;
import com.kh.worknow.member.model.vo.Personal_Info;

@Service("signupService")
public class SignUpServiceImpl implements SignUpService {
	
	@Autowired
	private SignUpDao signupDao;
	
	@Autowired
	private Member member;	
	
	
	// 로그인 작업
	public Object loginMember(String memberId, String memberPass) {
	
		return signupDao.selectMember(memberId, memberPass);
	}
	
	
	// Member_Info 테이블에  데이터를 넣는 작업 (공통회원가입 정보)
	@Override
	public int insertMember(Member member) {

		return signupDao.insertMember(member);
	}

	// Personal_Info 테이블에 데이터 insert 작업 (개인회원가입 정보)
	@Override
	public int insertPerInfo(Personal_Info pInfo) {

		return signupDao.insertPerInfo(pInfo);
	}

	@Override
	public int insertComInfo(Com_Info cInfo) {

		return signupDao.insertComInfo(cInfo);
	}


	public int checkMember(String id, String pass) {
		
		return signupDao.checkMember(id, pass);
	}

	
		

}
