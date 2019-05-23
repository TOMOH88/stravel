package com.travelmaker.stravel.member.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.memeber.model.vo.Member;

public interface MemberService {
	//추상메소드만 멤버로 가짐.
	//[public abstract] 반환형 메소드명(자료형 매개변수);
	Member selectLogin(Member member);
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String useremail);
	ArrayList<Member> selectList();
	Member selectMember(String useremail);
}
