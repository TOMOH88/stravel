package com.travelmaker.stravel.touristspot.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.touristspot.model.vo.TouristspotCategoryVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotImagesVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

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

	public ArrayList<TouristspotVo> selectTouristspotList(SqlSessionTemplate mybatisSession) {
		List<TouristspotVo> list = mybatisSession.selectList("touristspotMapper.selectTouristspotList");
		return (ArrayList<TouristspotVo>)list;
	}

	public TouristspotVo selectTouristspotDetail(SqlSessionTemplate mybatisSession, int tno) {
		return mybatisSession.selectOne("touristspotMapper.selectTouristspotDetail", tno);
	}

	public ArrayList<TouristspotImagesVo> selectTouristspotImages(SqlSessionTemplate mybatisSession, int tno) {
		List<TouristspotImagesVo> list = mybatisSession.selectList("touristspotMapper.selectTouristspotImages" ,tno);
		return (ArrayList<TouristspotImagesVo>)list;
	}

}
