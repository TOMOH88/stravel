package com.travelmaker.stravel.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.memeber.model.dao.MemberDao;
import com.travelmaker.stravel.memeber.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	//마이바티스 연동 객체 선언
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public Member selectLogin(Member member) {
		return memberDao.selectLogin(mybatisSession, member);
	}

	@Override
	public int insertMember(Member member) {
		int result = memberDao.insertMember(mybatisSession, member);
		/*if(result > 0)
			mybatisSession.commit();
		else
			mybatisSession.rollback();*/
		return result;
	}

	@Override
	public int updateMember(Member member) {		
		return memberDao.updateMember(mybatisSession, member);
	}

	@Override
	public int deleteMember(String useremail) {
		return memberDao.deleteMember(mybatisSession, useremail);
	}

	@Override
	public ArrayList<Member> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member selectMember(String useremail) {		
		return memberDao.selectMember(mybatisSession, useremail);
	}
	
	

}
