package com.travelmaker.stravel.owner.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.owner.model.vo.OwnerPaging;

@Repository("od")
public class OwnerDao {

	public ArrayList<Owner> selectRoomList(SqlSessionTemplate Session,OwnerPaging paging) {
		
		List<Owner> list = Session.selectList("ownerMapper.selectRoomList",paging);

		return (ArrayList<Owner>)list;
		
	}
	public ArrayList<OwnerImg> selectOwnerImg(SqlSessionTemplate Session) {
		List<OwnerImg> list = Session.selectList("ownerMapper.selectOwnerImgList");

		return (ArrayList<OwnerImg>)list;
	}
	public int selectOwnerTotal(SqlSessionTemplate Session) {
		return Session.selectOne("ownerMapper.selectOwnerTotal");
	}
	public ArrayList<Owner> selectRoomList1(SqlSessionTemplate Session, OwnerPaging paging, String search) {
		List<Owner> list = Session.selectList("ownerMapper.selectRoomList1");
		return (ArrayList<Owner>)list;
	}
	public int selectOwnerTotal1(SqlSessionTemplate Session, OwnerPaging paging) {
		return Session.selectOne("ownerMapper.selectOwnerTotal1");
	}
	public int insertOwner(SqlSessionTemplate Session, Owner ow) {
		return Session.insert("ownerMapper.businessinsert", ow);
	}
	public int updateAddress(SqlSessionTemplate Session, Owner owner) {
		// TODO Auto-generated method stub
		return Session.update("ownerMapper.updateAddress",owner);
	}
	public int insertOwnerImg(SqlSessionTemplate Session, OwnerImg ownerImg) {
		// TODO Auto-generated method stub
		return Session.insert("ownerMapper.insertOwnerImg",ownerImg);
	}

}
