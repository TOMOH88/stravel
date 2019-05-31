package com.travelmaker.stravel.admin.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.admin.model.vo.AdminVo;
import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.member.model.vo.Member;
import com.travelmaker.stravel.owner.model.vo.Owner;

public interface AdminService{

	int insertAdmin(AdminVo admin);

	AdminVo selectLoginAdmin(AdminVo admin);

	ArrayList<Member> selectMemberList(PagingVo paging);

	int selectTotalPaging(PagingVo paging);

	ArrayList<Owner> selectOwnerList(PagingVo paging);

	int selectTotalOwnerPaging(PagingVo paging);

	Member selectUserDetail(int uno);

	Owner selectOwnerDetail(int ono);

	int updateOwnerApprove(Owner owner);

}
