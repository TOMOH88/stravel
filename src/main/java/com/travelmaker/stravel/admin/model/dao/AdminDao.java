package com.travelmaker.stravel.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.admin.model.vo.AdminVo;
import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.member.model.vo.Member;
import com.travelmaker.stravel.owner.model.vo.Owner;

@Repository("adminDao")
public class AdminDao{
	@Autowired
	BCryptPasswordEncoder bcryptpasswordEncoder;
	public int insertAdmin(SqlSessionTemplate mybatisSession, AdminVo admin) {
		return mybatisSession.insert("adminMapper.insertAdmin", admin);
	}

	public AdminVo selectLoginAdmin(SqlSessionTemplate mybatisSession, AdminVo admin) {
		AdminVo loginMember = mybatisSession.selectOne("adminMapper.selectLoginAdmin", admin);
		System.out.println(loginMember);
		if(!bcryptpasswordEncoder.matches(admin.getAdmin_password(), loginMember.getAdmin_password())) {
			loginMember = null;
		}
		
		return loginMember;
	}

	public ArrayList<Member> selectMemberList(SqlSessionTemplate mybatisSession, PagingVo paging) {
		List<Member> list = mybatisSession.selectList("adminMapper.selectMemberList", paging);
		return (ArrayList<Member>)list;
	}

	public int selectTotalPaging(SqlSessionTemplate mybatisSession, PagingVo paging) {
		return mybatisSession.selectOne("adminMapper.selectTotalPaging", paging);
	}

	public ArrayList<Owner> selectOwnerList(SqlSessionTemplate mybatisSession, PagingVo paging) {
		List<Owner> list = mybatisSession.selectList("adminMapper.selectOwnerList", paging);
		return (ArrayList<Owner>)list;
	}

	public int selectTotalOwnerPaging(SqlSessionTemplate mybatisSession, PagingVo paging) {
		return mybatisSession.selectOne("adminMapper.selectTotalOwnerPaging", paging);
	}

	public Member selectUserDetail(SqlSessionTemplate mybatisSession, int uno) {
		return mybatisSession.selectOne("adminMapper.selectUserDetail", uno);
	}

	public Owner selectOwnerDetail(SqlSessionTemplate mybatisSession, int ono) {
		return mybatisSession.selectOne("adminMapper.selectOwnerDetail", ono);
	}

	public int updateOwnerApprove(SqlSessionTemplate mybatisSession, Owner owner) {
		return mybatisSession.update("adminMapper.updateOwnerApprove", owner);
	}

}
