package com.travelmaker.stravel.owner.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;

@Repository("od")
public class OwnerDao {

	public ArrayList<Owner> selectRoomList(SqlSessionTemplate Session) {
		// TODO Auto-generated method stub
		
		List<Owner> list = Session.selectList("ownerMapper.selectRoomList");
		System.out.println("dao selectList : " + list);
		return (ArrayList<Owner>)list;
		
	}
	public ArrayList<OwnerImg> selectOwnerImg(SqlSessionTemplate Session) {
		List<OwnerImg> list = Session.selectList("ownerMapper.selectOwnerImgList");
		System.out.println("dao selectOwnerImg : " + list);
		return (ArrayList<OwnerImg>)list;
	}

}
