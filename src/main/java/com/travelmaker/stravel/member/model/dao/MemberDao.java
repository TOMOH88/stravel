package com.travelmaker.stravel.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {
	
	@Autowired
	BCryptPasswordEncoder bcryptpasswordEncoder;

	public Member selectLogin(SqlSessionTemplate session, Member member) {
		Member loginMember = session.selectOne("memberMapper.selectLogin", member);
		
		if(!bcryptpasswordEncoder.matches(member.getUserpwd(), loginMember.getUserpwd())) {
			loginMember = null;
		}
		
		return loginMember;
	}

	public int insertMember(SqlSessionTemplate mybatisSession, Member member) {
		return mybatisSession.insert("memberMapper.insertMember", member);		
	}

	public Member selectMember(SqlSessionTemplate session, String useremail) {
		return session.selectOne("memberMapper.selectMember", useremail);
	}

	public int deleteMember(SqlSessionTemplate session, String useremail) {
		return session.delete("memberMapper.deleteMember", useremail);
	}

	public int updateMember(SqlSessionTemplate session, Member member) {
		return session.update("memberMapper.updateMember", member);
	}
	

}