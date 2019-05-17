package com.travelmaker.stravel.touristspot.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.travelmaker.stravel.touristspot.model.vo.TouristspotCategoryVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotImagesVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotReviewsVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

@Repository("TouristspotDao")
public class TouristspotDao {

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

	public int insertTourReview(SqlSessionTemplate mybatisSession, TouristspotReviewsVo tsrVo) {
		return mybatisSession.insert("touristspotMapper.insertTourReview", tsrVo);
	}

	public int selectTourReviewNo(SqlSessionTemplate mybatisSession) {
		return mybatisSession.selectOne("touristspotMapper.selectTourReviewNo");
	}

	public ArrayList<TouristspotReviewsVo> selectTouristspotReviews(SqlSessionTemplate mybatisSession, int tno) {
		List<TouristspotReviewsVo> list = mybatisSession.selectList("touristspotMapper.selectTouristspotReviews",tno);
		return (ArrayList<TouristspotReviewsVo>)list;
	}

	public ArrayList<TouristspotVo> selectLandmarkTop(SqlSessionTemplate mybatisSession) {
		List<TouristspotVo> list = mybatisSession.selectList("touristspotMapper.selectLandmarkTop");
		return (ArrayList<TouristspotVo>)list;
	}

	public ArrayList<TouristspotVo> selectHistoricTop(SqlSessionTemplate mybatisSession) {
		List<TouristspotVo> list = mybatisSession.selectList("touristspotMapper.selectHistoricTop");
		return (ArrayList<TouristspotVo>)list;
	}

	public ArrayList<TouristspotVo> selectMuseumTop(SqlSessionTemplate mybatisSession) {
		List<TouristspotVo> list = mybatisSession.selectList("touristspotMapper.selectMuseumTop");
		return (ArrayList<TouristspotVo>)list;
	}

	public ArrayList<TouristspotVo> selectShoppingTop(SqlSessionTemplate mybatisSession) {
		List<TouristspotVo> list = mybatisSession.selectList("touristspotMapper.selectShoppingTop");
		return (ArrayList<TouristspotVo>)list;
	}

	public ArrayList<TouristspotVo> selectTouristspotCategoryList(SqlSessionTemplate mybatisSession, String cate) {
		List<TouristspotVo> list = mybatisSession.selectList("touristspotMapper.selectTouristspotCategoryList",cate);
		return (ArrayList<TouristspotVo>)list;
	}
}
