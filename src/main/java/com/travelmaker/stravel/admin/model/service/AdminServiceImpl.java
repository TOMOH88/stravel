package com.travelmaker.stravel.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.admin.model.dao.AdminDao;
import com.travelmaker.stravel.admin.model.vo.AdminVo;
import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.member.model.vo.Member;
import com.travelmaker.stravel.owner.model.vo.Owner;

@Service("adminSerivce")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private AdminDao adminDao;
	@Override
	public int insertAdmin(AdminVo admin) {
		return adminDao.insertAdmin(mybatisSession,admin);
	}
	@Override
	public AdminVo selectLoginAdmin(AdminVo admin) {
		return adminDao.selectLoginAdmin(mybatisSession,admin);
	}
	@Override
	public ArrayList<Member> selectMemberList(PagingVo paging) {
		return adminDao.selectMemberList(mybatisSession,paging);
	}
	@Override
	public int selectTotalPaging(PagingVo paging) {
		return adminDao.selectTotalPaging(mybatisSession,paging);
	}
	@Override
	public ArrayList<Owner> selectOwnerList(PagingVo paging) {
		return adminDao.selectOwnerList(mybatisSession,paging);
	}
	@Override
	public int selectTotalOwnerPaging(PagingVo paging) {
		return adminDao.selectTotalOwnerPaging(mybatisSession,paging);
	}
	@Override
	public Member selectUserDetail(int uno) {
		return adminDao.selectUserDetail(mybatisSession,uno);
	}
	@Override
	public Owner selectOwnerDetail(int ono) {
		return adminDao.selectOwnerDetail(mybatisSession,ono);
	}
	@Override
	public int updateOwnerApprove(Owner owner) {
		return adminDao.updateOwnerApprove(mybatisSession,owner);
	}

}
