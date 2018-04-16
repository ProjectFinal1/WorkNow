package com.kh.worknow.member.model.service;

import com.kh.worknow.member.model.vo.Member;

public interface MemberLogin {
	// Controller에서 서비스를 수행하기 위한 메소드의 이름을
		// 정의하여 프로젝트에 규칙을 부여합니다.
		
		/** 회원 로그인 서비스를 위한 메소드
		 * 
		 * @param id
		 * @param passwd
		 * @return Member
		 */
		public Member loginMember(String id, String passwd);
		
		/** 회원 가입 서비스를 위한 메소드
		 * 
		 * @param m
		 * @return int
		 */
		public int insertMember(Member m);
		
		/** 회원 정보 수정 서비스
		 * 
		 * @param m
		 * @return int
		 */
		public int updateMember(Member m);
		
		/** 회원 탈퇴 서비스
		 * 
		 * @param id
		 * @return int
		 */
		public int deleteMember(String id);
		
		/** 회원 아이디 중복 체크
		 * 
		 * @param id
		 * @return int
		 */
		public int checkIdDup(String id);
}
