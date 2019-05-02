package com.travelmaker.stravel.touristsopt.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.touristsopt.model.vo.TouristspotCategoryVo;
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

	public int insertTouristspotImages(SqlSessionTemplate mybatisSession, TouristspotImagesVo tsImages) {
		return mybatisSession.insert("touristspotMapper.insertTouristspotImages", tsImages);
	}

	public ArrayList<TouristspotCategoryVo> selectTouristspotCategory(SqlSessionTemplate mybatisSession) {
		List<TouristspotCategoryVo> list =mybatisSession.selectList("touristspotMapper.selectTouristspotCategory");
		return (ArrayList<TouristspotCategoryVo>)list;
	}

	public int updateTouristspotThumnail(SqlSessionTemplate mybatisSession, TouristspotVo ts) {
		return mybatisSession.update("touristspotMapper.updateTouristspotThumnail", ts);
	}

}
