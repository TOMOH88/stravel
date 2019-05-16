package com.travelmaker.stravel.owner.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.owner.model.dao.OwnerDao;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;

@Service("os")
public class OwnerServiceImpl implements OwnerService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private OwnerDao od;

	@Override
	public ArrayList<Owner> selectRoomList() {
		ArrayList<Owner> list = od.selectRoomList(mybatisSession);
		return list;
	}

	@Override
	public ArrayList<OwnerImg> selectOwnerImg() {
		ArrayList<OwnerImg> ownerImgList = od.selectOwnerImg(mybatisSession);
		return ownerImgList;
	}

}
