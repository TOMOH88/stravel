package com.travelmaker.stravel.touristsopt.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.touristsopt.model.vo.TouristspotImagesVo;
import com.travelmaker.stravel.touristsopt.model.vo.TouristspotVo;

@Repository("TouristspotDao")
public class TouristspotDao {

	public int selectTouristspotNO(SqlSessionTemplate mybatisSession) {
		return mybatisSession.selectOne("touristspotMapper.selectTouristspotNO");
	}

	public int insertTouristspot(SqlSessionTemplate mybatisSession, TouristspotVo ts) {
		
		return mybatisSession.insert("touristspotMapper.insertTouristspot", ts);
	}

	public int insertTouristspotImages(SqlSessionTemplate mybatisSession, ArrayList<TouristspotImagesVo> tsImages) {
		// TODO Auto-generated method stub
		return mybatisSession.insert("touristspotMapper.insertTouristspotImages", tsImages);
	}

}
