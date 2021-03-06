package com.travelmaker.stravel.touristspot.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.touristspot.model.dao.TouristspotDao;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotCategoryVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotImagesVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotReviewsVo;
import com.travelmaker.stravel.touristspot.model.vo.TouristspotVo;

@Service("TouristspotService")
public class TouristspotServiceImpl implements TouristspotService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private TouristspotDao touristspotDao;

	@Override
	public int insertTouristspot(TouristspotVo ts) {
		return touristspotDao.insertTouristspot(mybatisSession,ts);
	}

	@Override
	public int insertTouristspotImages(TouristspotImagesVo tsImages) {
		return touristspotDao.insertTouristspotImages(mybatisSession,tsImages);
	}

	@Override
	public ArrayList<TouristspotCategoryVo> selectTouristspotCategory() {
		return touristspotDao.selectTouristspotCategory(mybatisSession);
	}

	@Override
	public int updateTouristspotThumnail(TouristspotVo ts) {
		return touristspotDao.updateTouristspotThumnail(mybatisSession,ts);
		
	}

	@Override
	public ArrayList<TouristspotVo> selectTouristspotList(PagingVo paging) {
		return touristspotDao.selectTouristspotList(mybatisSession,paging);
	}

	@Override
	public TouristspotVo selectTouristspotDetail(int tno) {
		return touristspotDao.selectTouristspotDetail(mybatisSession,tno);
	}

	@Override
	public ArrayList<TouristspotImagesVo> selectTouristspotImages(int tno) {
		return touristspotDao.selectTouristspotImages(mybatisSession,tno);
	}

	@Override
	public int insertTourReview(TouristspotReviewsVo tsrVo) {
		return touristspotDao.insertTourReview(mybatisSession,tsrVo);
	}

	@Override
	public int selectTourReviewNo(int tno) {
		return touristspotDao.selectTourReviewNo(mybatisSession,tno);
	}

	@Override
	public ArrayList<TouristspotReviewsVo> selectTouristspotReviews(int tno) {
		return touristspotDao.selectTouristspotReviews(mybatisSession,tno);
	}

	@Override
	public ArrayList<TouristspotVo> selectLandmarkTop() {
		
		return touristspotDao.selectLandmarkTop(mybatisSession);
	}

	@Override
	public ArrayList<TouristspotVo> selectHistoricTop() {
		return touristspotDao.selectHistoricTop(mybatisSession);
	}

	@Override
	public ArrayList<TouristspotVo> selectMuseumTop() {		
		return touristspotDao.selectMuseumTop(mybatisSession);
	}

	@Override
	public ArrayList<TouristspotVo> selectShoppingTop() {
		return touristspotDao.selectShoppingTop(mybatisSession);
	}

	@Override
	public ArrayList<TouristspotVo> selectTouristspotCategoryList(String cate) {
		return touristspotDao.selectTouristspotCategoryList(mybatisSession,cate);
	}

	@Override
	public int updateTouristspot(TouristspotVo ts) {
		return touristspotDao.updateTouristspot(mybatisSession,ts);
	}

	@Override
	public int selectImagesNumber(TouristspotVo ts) {
		return touristspotDao.selectImagesNumber(mybatisSession,ts);
	}

	@Override
	public int updateTouristspotStatus(int tno) {
		return touristspotDao.updateTouristspotStatus(mybatisSession,tno);
	}

	@Override
	public int updateReviewBlindStatus(int rno) {
		return touristspotDao.updateReviewBlindStatus(mybatisSession,rno);
	}

	@Override
	public int updateReviewDeleteStatus(int rno) {
		return touristspotDao.updateReviewDeleteStatus(mybatisSession,rno);
	}

	@Override
	public Double selectReviewPoint(int tno) {
		return touristspotDao.selectReviewPoint(mybatisSession,tno);
	}

	@Override
	public int selectTotalPaging() {
		return touristspotDao.selectTotalPaging(mybatisSession);
	}

}
